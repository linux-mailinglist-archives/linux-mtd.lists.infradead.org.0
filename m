Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501A58DCBB
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 20:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9Nl5eEsXgrXy10UZQU/SSaK4XWNX31HB3NpfPiThIo=; b=HbA/7hfSGDi8sB
	isuTWZ8Z4n3Hz4mEMQU+WcI9IwF6bi4F+5JFmnuJ4VEvN1fDBOVjAWXhqoAzIFb6/2a5ntqFJ7XPz
	CS/NhNJjXHqQrEYvMloGG5ZJLvujvJkid9ayIXSYCJtpX1yXvLe2g4p1nWOdf2t5HtuCNTahJHxp3
	6BqaZP6laorjt8CJiDp/0NmYoBNBibFcAeQGtM3vgUP0sW7Q+TNFsR2MkDj6hYPc6rZH9zzCeAzKu
	lPbdL6uyO0YdKjGEu2xFc3Zn/6FD1vuF6SqL9Myi+YzTKsz3NhHCQAAUm9W2RVnJ3KmX3/msYL1iB
	XItfwE3kFM8aOle+vJTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxg2-0001R4-5R; Wed, 14 Aug 2019 18:07:14 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxfi-0001Qk-Kq
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 18:06:56 +0000
Received: by mail-qk1-x742.google.com with SMTP id s14so12868811qkm.4
 for <linux-mtd@lists.infradead.org>; Wed, 14 Aug 2019 11:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OO7XuzvVApwSZIHxh3Y/NXSIKyk+RMQKVn2vcEuD2v8=;
 b=IXiZJB9irsSyLatAAQAMfJqriU6d2Yn7H2r2N7e4dWWlCpo1951RdJTcxoQoYZRFSr
 5xbWDyXtAnLgqgWea3xZ1lqKiEIzUjYHrkiOWelU3tt9aJc7TIdjbrzIIrXfyQDIXnHJ
 ivSFv/gfoK/UvA+KrOO3av6LP9b8fwcrO3w4a9ZtYf5BQ3w1YI3Xae310V0gu8CDf3Us
 +LCD2Rdwpopon1JKgh4zgYnEtEFA/lV9un8s0h0Qto6uZspBkNq2/lLmE0OwE53vH3N7
 fQV+a0QNi5+W7ai51y/ajWSo5lY80yTys/Xe2ZQ+FGnxPK2L2PTAmGZlYNQJiMWwyqNW
 me9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OO7XuzvVApwSZIHxh3Y/NXSIKyk+RMQKVn2vcEuD2v8=;
 b=oC9ZCh/2a8+ZRdxqkwBe7V6Tuwj/gyltX8MUwbKpsqWgRTUQrLY9tpJepDsJxq7fA2
 gQu11+uG2yQB+nIKdPa+6VIk8Qk+2BmW/lbkIWmmoTl1BX/fMLLnqcvFvtKSdxBIGtoo
 zxWSWIHvRB7RwJzl3mjfoto53zwkxwifHa9n+jiNOIXtjSFbSdvaZGZt5kologHDi/Jc
 4opRl1KMMb29L7H8Q/hnGeACCkDFCB3KisqY9r2VZThms5PtYwhJs6LfWvm7rXfKn4UF
 gx1HbTBHTQrtk/jNIj9BWgQwdtpKf3OS4iqtTS+TEkYndd7Ax96+gSUUjOHXZhaXTlQT
 RNTw==
X-Gm-Message-State: APjAAAWjcZJiTRbi1zvJ7Emsno/CWUeRs+CFP6+GUWusRLbbGmLMwbvR
 AdI6GPFMefLBJT5aZ4maK4ezlH3F5SJBE1vZAyg=
X-Google-Smtp-Source: APXvYqx8T2aqOhCDlCkMC1iK4gX4sbf2lfjLIas78XvqhMiKOmOhc9B4D5VFhxY8NBg6LjM7JCb5q6MjC2C0FWELXJs=
X-Received: by 2002:a37:709:: with SMTP id 9mr738886qkh.2.1565806013337; Wed,
 14 Aug 2019 11:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJA2DFr3Vgk5ie=V5YitZr8HaiXWuQ+SKsHzzmLBFnhyeg@mail.gmail.com>
 <23922253.ayd0uQntjt@blindfold>
 <CAO1O6se0aPh2FScDStqrK50PPipBbsgEnEPbMHvOdXt2cbxtvA@mail.gmail.com>
In-Reply-To: <CAO1O6se0aPh2FScDStqrK50PPipBbsgEnEPbMHvOdXt2cbxtvA@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Wed, 14 Aug 2019 14:06:26 -0400
Message-ID: <CAF_dkJCg+N+cOM2jCNyJP=+axw5tbM5F-EuPZfBYTZwywODo5Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] ubi: Allow ubiblock devices nodes to be created by
 volume name instead of volume ID.
To: Emil Lenngren <emil.lenngren@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_110654_686879_E82A0384 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wpdster[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 8:34 AM Emil Lenngren <emil.lenngren@gmail.com> wrote:
> Hi,
> Den tors 4 apr. 2019 kl 21:43 skrev Richard Weinberger <richard@nod.at>:
> > Am Donnerstag, 4. April 2019, 17:29:16 CEST schrieb Patrick Doyle:
> > > Add support for CONFIG_MTD_UBI_BLOCK_BY_NAME, which enables ubi block

> >
> > Isn't this why we have udev, to create fancy by-id/by-path/... naming conventions?
> >
> > Thanks,
> > //richard
>
I never saw //richard's response.  I added it so I could use
root=/dev/ubiblock0_rootfs in my command line.  When I update my
software, I write the new rootfs to a volume named "rootfs_new", and
use UBI's fabulous atomic rename facility to swap "rootfs" and
"rootfs_new", reboot, and I have my new rootfs.

--wpd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
