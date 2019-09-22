from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import render, redirect
from django.http import Http404
from index.models import *
import time

'''
    试图函数的commentView有1个函数参数，其中song_id是来自于URL的变量。URL的变量和视图函数的参数要一一对应，
    如果视图函数的参数与URL的变量对应不上，那么程序会抛出参数不相符的报错信息。
'''


def commentView(request, song_id):
    # 热搜歌曲
    search_song = Dynamic.objects.select_related('song').order_by('-dynamic_search').all()[:6]
    # 点评提交处理
    if request.method == 'POST':
        comment_text = request.POST.get('comment','')
        comment_user = request.user.username if request.user.username else '匿名用户'
        if comment_text:
            comment = Comment()
            comment.comment_text = comment_text
            comment.comment_user = comment_user
            comment.comment_date = time.strftime('%Y-%m-%d', time.localtime(time.time()))
            comment.song_id = song_id
            comment.save()
        return redirect('/comment/%s.html' %(str(song_id)))
    else:
        song_info = Song.objects.filter(song_id=song_id).first()
        # 歌曲不存在抛出404异常
        if not song_info:
            raise Http404
        comment_all = Comment.objects.filter(song_id=song_id).order_by('comment_date')
        song_name = song_info.song_name
        page = int(request.GET.get('page', 1))
        paginator = Paginator(comment_all, 2)
        try:
            contacts = paginator.page(page)
        except PageNotAnInteger:
            contacts = paginator.page(1)
        except EmptyPage:
            contacts = paginator.page(paginator.num_pages)
        return render(request, 'comment.html', locals())