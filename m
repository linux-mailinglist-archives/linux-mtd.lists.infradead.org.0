Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46EE14003E
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 00:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1/xHN8YnDwcEz++t9DkrFZxQ7l1ZHjGrpCobVnxXxQ=; b=firsOp5QNoOVDF
	bYmNR4C8pIhxiJEUaMGsX5/957B3qfCRlvhXVZFtp501dKjYwUXffHM1Vu4KOuGXuNH2h+3G/S+XS
	gquMhpeRjX2c9sXz0iZ3Hexx3OoSSuIPwgtdy1nNQ1al7oXUxHboVTMcod6vXphD4Q5r3ayNJaKaA
	IIvFWQMtmDnTGQW+4dgJgk20PD3B/CCEGL234np7qwlp/cx/X4p0npI1aeRFbf/+df5W1awHzk8ND
	cy/2WQtnCFaLAMyzVyob4ur4mU/4Ooq8tQHd/BJerXyyuQOfREKL6pWOST3RMt16k23Np4r+wlFZG
	gcyPzrW9V5GNf7vivQGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isExy-00070I-3u; Thu, 16 Jan 2020 23:54:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isExo-0006zf-Kd
 for linux-mtd@lists.infradead.org; Thu, 16 Jan 2020 23:54:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id d139so8275855wmd.0
 for <linux-mtd@lists.infradead.org>; Thu, 16 Jan 2020 15:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FkrM20s+1fDKGBQn/43+pPYl+YDGx4tqwXoluQSwkyA=;
 b=SxaIl3YVy5O8ezTNgTT4rUfOfvuTAin9e4ah4aFqAghKh1SLuZf2HlqKPd7FsUJz2d
 KCnLUVYHeJ6Lzg9gaSpSIIiKPo5fpRFrdU3DjEbruIDmlhkGHjJ1YNL05W1qgnp+q9KL
 5KLaEomhVdPQwWBHcpnNBNiDLg31gju4Bul/W3P7TN7IQf4esGQtESRycgEJwsOsGatq
 bFuJM2diveKwYUd3+hEUgnfUOC5apF2Wj1yQuqGYaigMjZ7SEfiXikshvq5bZHqIIWZk
 6DVfWATimRiWlcilMbrVUW2ziG5BDOMjzg8V/MiztzvPUjZOckOJVrsAvpCIJ00cJ2Gn
 RlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FkrM20s+1fDKGBQn/43+pPYl+YDGx4tqwXoluQSwkyA=;
 b=UCDvkMPwvtj+QaTuiWJ/hbvTT2qh1S0oAXnt1h7livzaBe1vAXTfp0zSdO3fFbFgcP
 YCU5QyCaNgdtH1XouiXEP/vQNIzos3TFUC/jVe8C8seFXAnS1rBbP0aQA1EU1RadcPE0
 wuikMyEqmrXTrhG3wqxcGQEr+RA9Vsu2Vmr4b+giveS92lnpeeJ6QYHl6M4kQ8ptkBa4
 w2lX8VJMZNc1YJuYNtlVVr/bQzffCN5mm2nvPi9gM8oBUNsIHk2ZwwKeigtLcp+ATAi1
 3z8/gg60rMzL1dJ133p3dqNZRKkdERj7fKiRT7k8IGKA4EuLqalIjP2Hf0Pq24xqHfzD
 LQgg==
X-Gm-Message-State: APjAAAVnSFrVMGT8vuuKydorzTY1z5asSr/8qhotjWmTCAidPpWJK6l7
 VtO+2UVtZfLJ8+BPD4+sTcfUidZ2L8pg7bV/Vmc=
X-Google-Smtp-Source: APXvYqzxANPf1LbXfVujukSBW7flBiXnsJftgGvc6+BiAu5uXItzmP9amXYjGrwaXvmVWHf5VHazo0Gc5oerHbMkJX8=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr1656307wmk.68.1579218851221; 
 Thu, 16 Jan 2020 15:54:11 -0800 (PST)
MIME-Version: 1.0
References: <20200114054311.8984-1-quanyang.wang@windriver.com>
 <20200114092051.autszasi2rmywtyk@pengutronix.de>
In-Reply-To: <20200114092051.autszasi2rmywtyk@pengutronix.de>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 17 Jan 2020 00:54:00 +0100
Message-ID: <CAFLxGvwaabOGTLjEYUg2qdnjtbr_nnGXzBq-5rCzRpqvf-OQbQ@mail.gmail.com>
Subject: Re: [PATCH] ubifs: fix memory leak from c->sup_node
To: Sascha Hauer <s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_155412_673306_3B4C9BA4 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 quanyang.wang@windriver.com, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:21 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jan 14, 2020 at 01:43:11PM +0800, quanyang.wang@windriver.com wrote:
> > From: Quanyang Wang <quanyang.wang@windriver.com>
> >
> > The c->sup_node is allocated in function ubifs_read_sb_node but
> > is not freed. This will cause memory leak as below:
> >
> > unreferenced object 0xbc9ce000 (size 4096):
> >   comm "mount", pid 500, jiffies 4294952946 (age 315.820s)
> >   hex dump (first 32 bytes):
> >     31 18 10 06 06 7b f1 11 02 00 00 00 00 00 00 00  1....{..........
> >     00 10 00 00 06 00 00 00 00 00 00 00 08 00 00 00  ................
> >   backtrace:
> >     [<d1c503cd>] ubifs_read_superblock+0x48/0xebc
> >     [<a20e14bd>] ubifs_mount+0x974/0x1420
> >     [<8589ecc3>] legacy_get_tree+0x2c/0x50
> >     [<5f1fb889>] vfs_get_tree+0x28/0xfc
> >     [<bbfc7939>] do_mount+0x4f8/0x748
> >     [<4151f538>] ksys_mount+0x78/0xa0
> >     [<d59910a9>] ret_fast_syscall+0x0/0x54
> >     [<1cc40005>] 0x7ea02790
> >
> > Free it in ubifs_umount and in the error path of mount_ubifs.
> >
> > Fixes: fd6150051bec ("ubifs: Store read superblock node")
> > Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
>
> Looks good.
>
> Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Hm, this one is not in patchwork.
Anyway, applied. Thanks for fixing!

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
