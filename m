Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621215F8EF
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Feb 2020 22:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpQ6xeubaF275ApE+g8IGUHmtwpFOvFqMcg0qOnJbjw=; b=JerN0GbkrAXibh
	clilYycwr/c1VfnqJvs7DYET44tRksn4QHx4qTtsEn6bIrcWwapDZqqyC+JoI5JEM0TmJDZBJK7wR
	mz52yjere/Tu+afHE+8G3pIstF4axu1E3PDMTCmbQtPW0OiME8tQNaJu/lVc+BXXzFETQnv1XQWSc
	30ish0QRT5Ytb9Nbe3FfTPYL5CI4td4N3mrcsbvjG3jua8hLheqkjOl6EcSMy7du4boCCZ3pOczAJ
	idwWwnbaLFzY0qzX19H06bmhH3FED2DOS3/jfbg6l1a3fxaSGLpgFIc/m5MG0yPfUe0/puU5LEIGF
	SSnob3ZAvD6yLNptD7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ioc-0005g5-1B; Fri, 14 Feb 2020 21:48:02 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ioT-0005f4-5K
 for linux-mtd@lists.infradead.org; Fri, 14 Feb 2020 21:47:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id y6so12318744lji.0
 for <linux-mtd@lists.infradead.org>; Fri, 14 Feb 2020 13:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ULvgOcWtqQoiiZTQEcdkHo/hzvR0mDvJVo9JBCmHaro=;
 b=UghfVcGD99QDVJvEji3DwtzpIp/PGb7GJofQVdGg87wpeWgj5k1fmihFbyHJDkzhXm
 S1NEmhmLvIIspUxPsjqWYv+g8q0cgFqkqJsqk6YpKTd6xRAfC/+pRYqVa+LT/zHudhSe
 ezPpARw61nPYCHiuMSRuvAH2pkTlrESq7Y0NpQrB9ACMChfUqXxp93LrOIYT2VYUQCJo
 gmb8qcWUBCD71s/4fRxFDy4T3zhcDp/8yu4ZXGH549/K9U19OlbHknT8fxAAk5duXcIa
 zBQ+s0+fPCvaocHwCtDCGP4wFwcvFTeDl1IPB9yATUIb5hn70+tb0HH0Q6XBRHaUjClO
 2Vvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ULvgOcWtqQoiiZTQEcdkHo/hzvR0mDvJVo9JBCmHaro=;
 b=RTR1Axhecp8ZZmX00tHfGbYL81DqW6MAm4W/AZlqe0U/3sgw6fDXrL7vhbtV3Zmgww
 MOpD7ciaMuP7e+DoNpynraRyhAS2xd+jci4fG8uPMXLA9PnWGp7x3KR2MUmMCu5qwsVy
 zqk45D0Uj3vKWVQv2GjOGDuIY50frSXccdyuYlDqlchCteKI+/DNwDUP446DSwnPkMij
 6widYH5h//Zysvj85EocjL0JMVnLPxxfaHNT0a4Cue34eFmnpyh3ePKYMP56u7fcPD2N
 P9ld1v9hdcpNv+N6ACqoKyzTE7JWuwSkQ4o/064YiVztnVsk0gh/eP89QcxVCZ2fPDqf
 dgkQ==
X-Gm-Message-State: APjAAAULxGJPZlJbsocffaw3ZzioI2PE9KjPFcB5mO77PjwWkopKOlHB
 NEdncv6BwjJFlye6tzjfR8huCrYXi6TKbFB9w59ErQ==
X-Google-Smtp-Source: APXvYqwOnenDJydesgZENHJdVpOerGyyRYO7zjT1GE3p1T0WHWXpqjZg+ov2CAwduAn/RxPssJiAJvJqDMAmNkptrfI=
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr3415670ljj.191.1581716868386; 
 Fri, 14 Feb 2020 13:47:48 -0800 (PST)
MIME-Version: 1.0
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-2-drosen@google.com>
 <20200212033800.GC870@sol.localdomain>
In-Reply-To: <20200212033800.GC870@sol.localdomain>
From: Daniel Rosenberg <drosen@google.com>
Date: Fri, 14 Feb 2020 13:47:37 -0800
Message-ID: <CA+PiJmT_8EzyFO283_E62+UC6vtCGOJXKHAFqnH3QM9LA+PHAw@mail.gmail.com>
Subject: Re: [PATCH v7 1/8] unicode: Add utf8_casefold_iter
To: Eric Biggers <ebiggers@kernel.org>,
 Gabriel Krisman Bertazi <krisman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_134753_228462_068E28BF 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Theodore Ts'o <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chao Yu <chao@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 7:38 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> Indirect function calls are expensive these days for various reasons, including
> Spectre mitigations and CFI.  Are you sure it's okay from a performance
> perspective to make an indirect call for every byte of the pathname?
>
> > +typedef int (*utf8_itr_actor_t)(struct utf8_itr_context *, int byte, int pos);
>
> The byte argument probably should be 'u8', to avoid confusion about whether it's
> a byte or a Unicode codepoint.
>
> - Eric

Gabriel, what do you think here? I could change it to either exposing
the things necessary to do the hashing in libfs, or instead of the
general purpose iterator, just have a hash function inside of unicode
that will compute the hash given a seed value.
-Daniel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
