Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF15B086
	for <lists+linux-mtd@lfdr.de>; Sun, 30 Jun 2019 18:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xyFFDtOCJFj+yYWdBAsHpQPNOJoAiPO1pjd+EMLJ68=; b=IZDbQnHla9CRrW
	vXO12WIQtJs9e1LEsr1uSq+99av0Zt6DYpJ0hEQFecgPpjvtMcsktyE0B+CbyDnhuY0FpICdxrZpV
	uWAqtNL0nDCORDaRGaXwsVsvDKcSo1ITYzmiVVzMSg1tL/EaqDyXGvZ2AyvN38Lpt1HuX1xMhAwf6
	1AXhmo8lQjjvcE+ZbL31gJ9GF07tsipToY/gE7dJNcuIVJBw4k57vZ+mCVQX1YwcpGlxO80cdxO2d
	ilUSOlFW+o6ZB6NDVUJIg3wBYJEWlQFyrKEP8GEuo1klTXuUESjshmt6BbbsY9mWB4Bi78JQnIAjk
	NmfjXIfGwOJaAPVsAgFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhcP8-000238-Kl; Sun, 30 Jun 2019 16:10:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhcOt-0001qS-O1
 for linux-mtd@lists.infradead.org; Sun, 30 Jun 2019 16:10:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so11150385wrs.3
 for <linux-mtd@lists.infradead.org>; Sun, 30 Jun 2019 09:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EEGvLQnvjmPNSYyesGAZ80/3Kf3Ln2FvTHJZV7d1XSU=;
 b=Zj2pP4fRnPohTIudwwiW5DeyPT1xOXtFdlvhhMsh72NFCCaYAZwXif+pzxqX9RuwOl
 ATS6e2VaQTtNz67gQLfQtjewrAJeAyyM9zZFBDglHLj4B2bBUnPzmYeVCkOnIVxlzuMP
 G4yzBUV/GTKIAiJ5AsoRPYFRoiWd62vbSpRLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EEGvLQnvjmPNSYyesGAZ80/3Kf3Ln2FvTHJZV7d1XSU=;
 b=eb/v1pD1XNYomUEmYXPVwBfjUFvgXk1fupDCkR7TvDqY780aVm6H/a5t/8YnkVFUsE
 4oyphCcJYKXw3XsgZl4BV/u+Ha0iQJtpVbAdwmkx3WF3O+9rYG5NIBU664viqM3+Pz5r
 MP7d/9EHbDWfdnXe9DI6iO0ApDSX2esguytmObyHggT/tVnHSoJrARivJJfcbvG+d1bj
 jzcXoe+izFlF/TPiux4U18enXcyRkKoAfpsfR8HenB7y/Db+iRBnaQFWQd0UBwlK5SB7
 Ycc/Fm7N8Nkjc4VSt4EqruTIiimOmK/w9H+E99z873dl6voZc0dExLo+FEc2S6QSq/dE
 3+zQ==
X-Gm-Message-State: APjAAAXLIfUfRGEpksQd/6/u225M+TP8Oi3d/NsEo0FptPu5l9Myqddh
 STVJYyfkihwGfPvMvu60WLwPLCZY+2T+bmbUA/Chew==
X-Google-Smtp-Source: APXvYqxJ7At7vplyhFNzpYHOHbG/BwK2XybTjD5eLC1/XnP+KuPhAhHeHXcayIqTQU0P0us7aSPbA0o3rUfUFZTz6wg=
X-Received: by 2002:a5d:5186:: with SMTP id k6mr16721966wrv.30.1561910998037; 
 Sun, 30 Jun 2019 09:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190603123835.65536-1-zhuohao@chromium.org>
 <20190630094559.5a1a9a86@collabora.com>
In-Reply-To: <20190630094559.5a1a9a86@collabora.com>
From: Zhuohao Lee <zhuohao@chromium.org>
Date: Mon, 1 Jul 2019 00:09:47 +0800
Message-ID: <CABD5yb=D1NgWueLtofGs9UftauwXwr8yheRQaCWNA+SYCj8g=A@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] mtd: mtdcore: add debugfs nodes for querying the
 flash name and id
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_090959_784573_6546FCE8 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, bbrezillon@kernel.org,
 richard@nod.at, Brian Norris <briannorris@chromium.org>,
 =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Submitted v8 patch for the change. Thanks for the review.

On Sun, Jun 30, 2019 at 3:46 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Mon,  3 Jun 2019 20:38:35 +0800
> Zhuohao Lee <zhuohao@chromium.org> wrote:
>
> > +     if (IS_ERR_OR_NULL(root)) {
> > +             pr_debug("mtd device %s won't show data in debugfs\n",
> > +                      dev_name(dev));
>
> You should be able to use dev_dbg() here since you have a valid dev
> name.
done
>
> > +             return;
> > +     }
> > +
> > +     if (mtd->dbg.partid) {
> > +             dent = debugfs_create_file("partid", S_IRUSR, root, mtd,
> > +                                        &mtd_partid_debug_fops);
> > +             if (IS_ERR_OR_NULL(dent))
> > +                     pr_err("cannot create debugfs entry for partid\n");
>
> Same here, dev_err().
done
>
> > +     }
> > +     if (mtd->dbg.partname) {
> > +             dent = debugfs_create_file("partname", S_IRUSR, root, mtd,
> > +                                        &mtd_partname_debug_fops);
> > +             if (IS_ERR_OR_NULL(dent))
> > +                     pr_err("cannot create debugfs entry for partname\n");
>
> And here too.
done
>
> > +     }
> > +}
> > +
>
> Looks good otherwise. Once addressed you can add>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
added in the v8 patch

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
