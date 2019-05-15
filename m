Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470031FC02
	for <lists+linux-mtd@lfdr.de>; Wed, 15 May 2019 23:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHvezOg73MJTjwOPUeSA1wC9Yfp9EFEYzNvoJhUl4dI=; b=A0mR30DG6ro725
	M5XmAvoHOJTWN0yI6WQMv5H1ls5dlbh5rwXq8TMAkU94En6DQeROuaAbyebqm2cf+g9r1totu2yqV
	cLjUE9dSCblZGBOp586QbddF9zE4DBm66uAJhnePH41Z/BfGRdD+uqd5Mu9EykgkgMrv2SimD/8YF
	N7KxeSnPvIsV22HjYTxz0R+xqVOCXrhA81/0Do9PXgNiM/uO+zc8HtuSQRo/2bcH0ktl+H693rtsV
	o2YMKRof4X7khbktArMuDDBseJkm9ZSbWzrS9Pp6NOlnIsaFe3XmvBmZpOZTINoirjnjZyEhy8uSl
	IADOXSonaAcpRQGMnvQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR11A-0004IN-1N; Wed, 15 May 2019 21:00:52 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR112-0004I5-JU
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 21:00:45 +0000
Received: by mail-wm1-x32e.google.com with SMTP id j187so5558716wma.1
 for <linux-mtd@lists.infradead.org>; Wed, 15 May 2019 14:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0YwmpvP+rMpFcNcCho3HpAkjJLkgqW1dbm3WkulvRrg=;
 b=igEIO6/J8K34sgtKNUjPKDPsKN4vkuUys4KMlg8IopQ026OHeRqSWSKdNHpCUUZbqd
 D1Xrfcqgm06WwwCF5wsT6Vu9S8eZa1YMbxrsTPu0Yq2FSGPWe+uFs6Q/uKEibkc+zJQA
 PIvIQgHoMgpKbH99CgjKjTXXTLCXC85NDt61lASu5p7w1XcxmQrbgKbXhfCVHkxBmoAF
 Pv+OAyCev9MUXZL/saXvt+HJpppNBYI2Guhfo6oXnjlgmma1pWOSKgfXRL9AZVMtIYjy
 TQhJnMLNPTSiaxtWQWY6TP/USDuMoqn2/OwNJxvhrxHWxE3mlzHhMyvXFPpefNVVhBWM
 kiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0YwmpvP+rMpFcNcCho3HpAkjJLkgqW1dbm3WkulvRrg=;
 b=hnoDRUcmwxSvf6YdgWXCwoT/v4zsGxUVVEv74ymYBVX6TzWfjl7H8XnCSEFgGSVSnO
 4T5l1alZNnK8/TYSbJOLplMgoyyCtdLwo/kmQBXmrkUbmMzlk4Wc5mbIQXew21Dg5QqE
 6TOH0cysPN2AR4JZob2v99Zk/TJDhm7V8EtrcSFTRv67mYiU1c49G694uV8EhgaFd+/W
 hsuK53wKC90z6/jSopbLQDKVXjNIii3wz8vhNlol1apI8o7X59e+9FScFHRBVzHhbIm2
 ytftA9nS5jp2RdIwVUNaMw7xsAZPPJCGuDu730lrWJQAdUqwzEBqtZ+4sITUf7nwNE3h
 AXQg==
X-Gm-Message-State: APjAAAWJqw5k0pLwuKMuaLP8t/DTnEpSN5xYkZFkkjl8G08Kc3CvbHFv
 scFzRo8JsHiJGbrl8+jtvv3nlGtlr4zERFhDFHU=
X-Google-Smtp-Source: APXvYqzOhb4qdA6w14C+vrWsULjPKfJUFNLRxCbEb37m0m1lC0od8W87ILCrAJqKG9Nv/1YErUKc1n4rT3NsNXLX2Rw=
X-Received: by 2002:a1c:2245:: with SMTP id i66mr9223843wmi.19.1557954043034; 
 Wed, 15 May 2019 14:00:43 -0700 (PDT)
MIME-Version: 1.0
References: <E44E4181-1CFB-493C-8023-147472049D19@cisco.com>
In-Reply-To: <E44E4181-1CFB-493C-8023-147472049D19@cisco.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 15 May 2019 23:00:31 +0200
Message-ID: <CAFLxGvysPg3FO4kT0QrRsYTr219WVttQMeat_StqbifTPrGLmA@mail.gmail.com>
Subject: Re: Removal of dump_stack()s from /fs/ubifs/io.c
To: "Shreya Gangan (shgangan)" <shgangan@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_140044_668642_3C13EF88 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:45 PM Shreya Gangan (shgangan)
<shgangan@cisco.com> wrote:
>
> Hi,
>
>  /fs/ubifs/io.c has dump_stack() in multiple functions upon errors and sometimes warnings.
> Since the error and warning messages seem to be unique, the functional value of these dump_stacks is not apparent.
> Why are these dump_stacks required and what issues might occur upon the removal of these?

They are not required, but they are just useful. While you are right
that the locations within UBIFS
are unique, they are not for the whole kernel context.
Filesystem functions can get called via many different paths from VFS...

Why do you want to remove them, what is the benefit?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
