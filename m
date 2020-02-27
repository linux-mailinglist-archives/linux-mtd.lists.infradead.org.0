Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE961711D5
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 08:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STHbVpLg3q9KnCTggKp8QDCFf+HPdXiP8qGjHDb40Wk=; b=oQCZeSD0GTO/0/
	bdhqVJLRakchJbR7wdk4Ng0K8uG5lrRrwTHACDReRthbPxsXbmW5avzBx/v1g72NUVV459f/v4KNN
	gsx7oqJcdky5jXswh+pm/qKRWbNvfZhsJvH9EflpdL1Bl99Zu+lD3U9R07sYR+2l4E/UJMy8hySiy
	YNNa1XUs/FPX5CPKnOmRiuzgHRyoalmShSJzN4n3CgrWWGumcNAL5T9JbN8GMg7QJbsoI6c0k+Zfp
	OTwtJWmuwrc11Aopnlw5NxLFgBxaVhISt8Ql/aLMBryyEQ4wIlxkx/PvwYDAik22LAise/Rha8aKc
	bxcIjgNlpw8g/mcPifvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7E1I-0002qm-57; Thu, 27 Feb 2020 07:55:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7E19-0002qT-W8
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 07:55:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id z12so2330125wmi.4
 for <linux-mtd@lists.infradead.org>; Wed, 26 Feb 2020 23:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3L+1CX8XwZKBQ280Sagdw9uDfxfGYW5K1+VuHg+NT3E=;
 b=XDWHd1qpI5Ft9yYLBrhxHBD2dvoQI+sE3kt1qMsvSb8lsM5p2lmsgk/e+lyY1M59LH
 L6n5oUSdcXWhM9Aeqe788O9Jr0BjeFg8dkHJQn5zIxCN6UHI7Mah8cCoK46XFOB0OUn9
 s7n0oQbRDvHtovlgBG+WWn3noP/TfvcuylXlZ+NgH6ZG4ibAKBMReaiQWJzBjdyPrmQt
 cLBEgKXlITuYEAESmLCp0Jx7pdbEAaZk00jxu3t0WZiXiHgqhIQujxzB+H7AUJbByTJ/
 t7n2T2uIPhIFSH5cuxUIRMRUeN+ICntpabTl8nRR50CNOCMYuEmgxjg1NOVYb3FgdBJP
 EPew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3L+1CX8XwZKBQ280Sagdw9uDfxfGYW5K1+VuHg+NT3E=;
 b=q8u5HExHE7MKj8QnmPC8HqXx7JmVgu0zIQlrnQEvniAFA2znB2oStXWsUcvMV+iJ6R
 eue5oJMUQEzEBqVRXYg1+vF0h0Ui/a1Shp2LpAyWKs4YfHGwomzzmXdXTmxcHzLhgoBQ
 P48Vh9VTQXtbx1EkauDj9lFmvAoENnzq3q6cV0U7EGXDjKy3oBo4nSVySqAOoYmOzm0I
 RdE5iIVxBNzBKhwsis1oikh7xudt209FEx7IYhHkfbseAiWtGzHYYjvTHDfA8TeI1kAl
 wrDncHnhWNHz1z7jlb3OvJ4ubSjevtT1ZM73HsMR6bHveAnAc7GK51xVrFeGcMWSZhyl
 rg0A==
X-Gm-Message-State: APjAAAWG9YDJD4wbCQuaLbkHmQMjfnoXA09ewyYXa6iARrjIejnL/SAX
 QRNLO1Q+tRRYdb4XaBSAbSkTYBkpueeWQWDnoGI=
X-Google-Smtp-Source: APXvYqwZ8dNBlFaxqF6WX68tpWUsuGHc0yoCdc+grElrlO7Gb8VS9NJUs4r2qqp2vc1M4wDTov5BErE4hXnNE8SPajQ=
X-Received: by 2002:a1c:4e02:: with SMTP id g2mr3758907wmh.131.1582790134172; 
 Wed, 26 Feb 2020 23:55:34 -0800 (PST)
MIME-Version: 1.0
References: <0d3a2ed9-8ff0-7030-a8c6-c5a204eb6b5b@niko.eu>
 <20200205092202.5f0929c3@xps13>
 <21a266b9-ff3f-7a94-4562-11d6f59d4327@niko.eu>
 <CALLGbRKotskAgZpxNFHF+RdrA0HB7U2qw6bzvZ9WDJEAiWYwgQ@mail.gmail.com>
 <d86c95cc-3393-0f6e-73ab-56a5bbbbedd8@niko.eu>
 <CAFLxGvwKfcw=Com5U7uGsA-iJ9SuQyqHdEeaWPUmnoxqwma0Gw@mail.gmail.com>
 <9ff6f4ae-8dda-608b-4e60-6d391cb4efb9@niko.eu>
In-Reply-To: <9ff6f4ae-8dda-608b-4e60-6d391cb4efb9@niko.eu>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 27 Feb 2020 08:55:22 +0100
Message-ID: <CAFLxGvyaBu8Uu9xMgk2fDK_erv0eOb4B3_JgjLM9m0iu66Gr8g@mail.gmail.com>
Subject: Re: ubifs: mounting fails due to error in orphan file handling
To: Jef Driesen <jef.driesen@niko.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_235536_058506_2D7FD335 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
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
Cc: Steve deRosier <derosier@gmail.com>, Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 2:47 PM Jef Driesen <jef.driesen@niko.eu> wrote:
> > I send a fix for this before I started traveling:
> > [PATCH] ubifs: Fix ubifs_tnc_lookup() usage in do_kill_orphans()
> >
> > Digging currently thought all my mails....
>
> I found your patch:
>
> http://lists.infradead.org/pipermail/linux-mtd/2020-January/093390.html
>
> I did some tests with it, and it appears to fix the problem for me!

Thank you for letting me know!
Can I have a Tested-by?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
