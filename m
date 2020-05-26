Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09891E287D
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 19:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrqmd7J5hxhdVPI4Hk0HLrnF4Qy+pEpQPjOH+ZjziYY=; b=hLB/nAXLTPgRCm
	JSGSK8ijUsnEWERe59k4IadcxSMDB/uafkdDi9E5FguvLp6u5ZxU0cIuP9pfqN7M4QGb5OyCGuWDf
	EhsdWAx6mqpbCl8CrDJXuTWuPhIMR3bpVYFBTEcpAet+g0pY+UJrzY2C8hBZxQya54hIcEu9cts8V
	QtyvxmWwrn40RWLBHN6ixCBXAgl/i9nZhDQHQ9E+CTOpWfkp0H22XA91NilfsA4OulV/AO/I4kz58
	TPl90s/CuZTCXDG16sUbPTtw2dKuUh60vjD2xX37ogHY+pAeKLPECMjBNfBVON43fBNkmBlpuVmh4
	p19BrSMWEk+qft0Ohf/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddGt-0007IS-Mf; Tue, 26 May 2020 17:21:47 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddGl-0007Hz-Mp
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 17:21:41 +0000
Received: by mail-qk1-x732.google.com with SMTP id f189so21401853qkd.5
 for <linux-mtd@lists.infradead.org>; Tue, 26 May 2020 10:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4eBxXvLo01EKwpOcabZU4zJz7HvDDdlIi1qH8QL5R00=;
 b=qBM+6YlMy+1/dMA7tZJ2e64zsUrLYLycupsBQER2RGtycEvh7p56OkY/zL8EsvHeyV
 G7tgJK8bIbpMvR5IPLThaJUB0gXH/R6McRZBBnnagN67PC51S4Em90ziakfoS5DWr3MB
 pYEF5gGOv2skdykPcGwlUiQuMAL4njGahJw8MBehBKQnOBHMoLhnLbCGRFIB6esfHPm/
 2onNVvsjHpjoC8zw2MqUy8Nyf17hhW/Nte5iGDBqsML8OAs5dEuOFv+ootEUiXvUE2TH
 qkXjrCHTKss8vuDmxGlx/dGpWOTiFNGNg9uWRjm1xDFuZks6ljslEUML6MJA31QMoKhW
 99iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4eBxXvLo01EKwpOcabZU4zJz7HvDDdlIi1qH8QL5R00=;
 b=ouIpgwsmxXVboQWn/YpEqP2uReLxqCiLT/KrquT8HdRmTVB4KFWrlpFcffIxrIp+Hw
 /8y7khh8ppicVL89uDsai2YBUf08nLTN0WVVtmEwJBeWTzEHHbs8gSolv8d47Q0oJxhX
 lHBSEv49AyCqm6xX2Bp2zuMN94UADgnwmzdTqq/waq5dGVO4/ZUZC0DR6l86Xm/tm3e+
 mCsoHJQKkuL3IbnYgSZALh0Fta3QKSCjXix33Zip+1KIXcfZpqk5UeDJJvWXNwet/nn3
 P88nxs7ymZS0vq/2uHaA89qEJuwga5JZG5nakaBzws55N3olXc8iJSeMg+w1SRsS6wUk
 VjTQ==
X-Gm-Message-State: AOAM533oyzAGd7DZeVOMFyA8EIiG59cOGfKhzMusTZL8yzx478L+vmdx
 d4PCs6cL/8S1vOSsW4IJ+fikRkAN/iXtzmM4c0c=
X-Google-Smtp-Source: ABdhPJxc4mqUFhj7fTxON2CFpiPoLOozGpLsc8r+VoE1+IACIW62WceLYuYh0ukuDQIR4rq0/lgcvm3GcODBaHxNOq0=
X-Received: by 2002:a05:620a:2287:: with SMTP id
 o7mr2387606qkh.238.1590513698437; 
 Tue, 26 May 2020 10:21:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJBQJSY_Fg5H=OcFHvio1-FcDEfgbKwhRmc=KhvdcnNAVg@mail.gmail.com>
 <CALLGbRK+4wNzMBnjWN3dar_WOSTR_UKDXRUZ03DHxQGZRuRvhQ@mail.gmail.com>
In-Reply-To: <CALLGbRK+4wNzMBnjWN3dar_WOSTR_UKDXRUZ03DHxQGZRuRvhQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 26 May 2020 13:21:12 -0400
Message-ID: <CAF_dkJAtgVfdn6Mc6HfCwiCATXOfSuGTEDdzsTK2S=qLB=D4=Q@mail.gmail.com>
Subject: Re: Missing 2 blocks on my UBI partition
To: Steve deRosier <derosier@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_102139_817374_5D4049F5 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:732 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wpdster[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 12:01 PM Steve deRosier <derosier@gmail.com> wrote:
>
> The last two blocks on the NAND are typically used as a Bad Block
> Table by Linux.  I imagine this is likely where the last two blocks
> "went". You should see a message about that in your dmesg.
>
> - Steve
Ahh yes... that sounds right.  It's curious that ubinfo still thinks
it has access to 1024 blocks, if the mtd driver (presumably?) is
taking away the last 2 blocks for itself.
It also seems like I should be able to shut that off, since
(presumably?) it adds no value to the bad block management provided by
UBI.

I'll go look into that.

Thank you very much.

--wpd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
