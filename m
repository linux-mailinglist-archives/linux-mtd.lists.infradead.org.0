Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1CB1381A7
	for <lists+linux-mtd@lfdr.de>; Sat, 11 Jan 2020 15:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQvvl689uoBpwchEq411bBBQKUPagHjvAmXLFZbOHCA=; b=pdUSJBR8wy8Z1R
	2tHGLjJft8sdpAVOknysBay6LIXsjTvhE5IeEBLTiRGB42xDeUJEOEYqdERRKmS1+58Jizn4q6NyF
	J2AihhXdeHK/jLWkVM7JWEhKvHfJYv7ge0GKJ+iX+XJzeTOhOkK8oXEjPTbyyZ5rh68abzBNgErw8
	LkPIsS2UT7IrUAXb7HF7ZNMBdY3ftqkeayREJ6R6MtbP9SWsEKDEpr+32xzZUMvkpItuWhmWHAZSO
	oY8DA/xoCOdGyjY/Lkk7qpAYqs9/+ZrcQTy1CV50zx8sciZkGF1N17P7T06/lBk1hVafTZlpnNoJr
	qhhUACvs3Yki3KZTfH6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqI5i-0006Uc-Ru; Sat, 11 Jan 2020 14:50:18 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqI5Z-00067R-5Z
 for linux-mtd@lists.infradead.org; Sat, 11 Jan 2020 14:50:10 +0000
Received: by mail-qv1-xf41.google.com with SMTP id u10so2144439qvi.2
 for <linux-mtd@lists.infradead.org>; Sat, 11 Jan 2020 06:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XUwSj5JHipKODaQtAqTSVnH1IpII8bzoz4gqZnfsMg4=;
 b=iTc6aLCCoK16p/ElKy6SajpyBAZFAQ5yeBiS1yAGXRrVGgEtvhtJmYjlYDZlMsKkpi
 pLTO8CZgTUyFO4qN7dGm8mtPfuOSByjQ3mltyXZLs4GnYkiVWF7/6kvtyvrKR9h8+C0y
 CJJYIvI8wMAM63twmjovqZLNFcafPF0KLKFes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XUwSj5JHipKODaQtAqTSVnH1IpII8bzoz4gqZnfsMg4=;
 b=fu0+wgf1OQ/6vxY39utyWPR5tCEwA500Vr/H497YQGlnEJuFlrcL6Np//sMOIbJsAY
 X/5exMNSYPoHiyG8rQl4IpKTRMe+l9xdI8ddWTRxNf8Cy2rQr6D3e4w/cXT4mqolMxWa
 PO1ElaBdPXWx6SARLJWRJzRslfCtihLxRI/s5DYxUuLM9mGSlwt8sjFlPapKUyTc+feB
 a2c0wNPhZw+YS9jRfs8lGo865ZDpfnGIX5bI56ZEiFQaqzDRc9Xs3h/YXR9I6Keej9qh
 ZRMjNYXM938buzdFoYeLza9kvunCRh8itiyRLeOmKBScMrikOtD12P/fcXwV8tfmmVXF
 hvSw==
X-Gm-Message-State: APjAAAWAOwmblTnZAB+KAvwjinQjo5/GWyF/C/a6qClOP/gCND81xjVl
 MrRo7YGn5TBJWcLIWbdPGrvNLQ==
X-Google-Smtp-Source: APXvYqwre4CtUI3xZX4g5Ox6GPGwYsULaFuQmUTA5IjSwjSLV3g8Czjha0JwkWCN1y6BeRbbAK6xmA==
X-Received: by 2002:a05:6214:1428:: with SMTP id
 o8mr3814903qvx.87.1578754207151; 
 Sat, 11 Jan 2020 06:50:07 -0800 (PST)
Received: from chatter.i7.local (107-179-243-71.cpe.teksavvy.com.
 [107.179.243.71])
 by smtp.gmail.com with ESMTPSA id l25sm2323790qkk.115.2020.01.11.06.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 06:50:06 -0800 (PST)
Date: Sat, 11 Jan 2020 09:50:04 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] mtd: Fixes for v5.5-rc6
Message-ID: <20200111145004.htnpdf6oaiksryxz@chatter.i7.local>
References: <20200110154218.0b28309f@xps13>
 <CAHk-=wg=8=nTeOYGoAbJ=VjS47Nh4-_OFK9zKsK3mK4nAi2dNA@mail.gmail.com>
 <CAHk-=whdsFSX0gTOiNkTANONgHHVY+8jUd1DmY2SJpdNOq5xJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whdsFSX0gTOiNkTANONgHHVY+8jUd1DmY2SJpdNOq5xJw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_065009_250923_F9140FBD 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:38:37PM -0800, Linus Torvalds wrote:
> On Fri, Jan 10, 2020 at 12:31 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > Konstantin, can you see what's wrong?
> 
> It's not just Miquel's. The sound, thermal, and power management fixes
> pulls seem to also be lacking pr-tracker-bot responses.
> 
> But Jens got one for block - but that went to the block mailing list,
> not lkml. So maybe it's specific to lkml itself.
> 
> Maybe things are just slow, and I have gotten used to the
> almost-instant responses when I do a "git push" to publish my pulls.

Sorry about that. The public-inbox repository for LKML automatically 
rolled over to start a new epoch (from 7.git to 8.git). This only 
happens once about every 6-9 months and is such a rare occurrence that 
it's hard to properly catch all potential gotchas.

Things should be unstuck now, and at least this particular bug is fixed 
-- hopefully it'll be smooth and automatic the next time the epoch rolls 
over to 9.git.

Regards,
-K

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
