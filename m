Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375513DBB9
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Jun 2019 22:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umU+uxJ7lkuvgHi30xrWDw3MhsTuYbxKGj6TWsLCToU=; b=CkLWN0rmRbeXSj
	TsgUrUS8PzFnp88RpP7PKlQKZI34xr3GIJwJhcOpNTHo1ptQdOq/yhjeKWpPoGTwFrynKX5ZR+87T
	b9/P15P4QQMj5cmtFx2g/k5n4LJ3ib7D/aEyvK6MP6HluKVCuhGEKUilbtJ04TGbmzFfOD3lepjVX
	aG68lzDU1PtT+5gzg5XH0sl383APSHh8U2cX4pE+3dgmH5i3Om+VsguzoBafPp/V7XQoJNMuXSMGw
	b0Q2zaSeSUK3baJk5Ap0hZn+oP75E5dAY2IqtWD6h24MIReoItXtJgzG8IZ3BSpIWueQg2VfN642M
	6Q+iER3kfOZQ8NbReJXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hanCX-0007xx-B0; Tue, 11 Jun 2019 20:17:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanCM-0007uT-Mi
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 20:16:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so14460107wrn.1
 for <linux-mtd@lists.infradead.org>; Tue, 11 Jun 2019 13:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rdnkv68QQM90C5QWNTYgPjC6Dj76JDdVz07nlfyP5ZQ=;
 b=hQQshxw4L8UXE+gz40O8iQyiPXXifPlINYxKfWzOe8AeWC02uo7i7QWZ39sq37D8ox
 DDFyHZaImSkOCvk42zIhCjfsfF1n74QVSxkBNuxgqHGbaGYMsME3e21yDuAdX/vkVLHS
 g3/R/MWsmyTknKHVPTLQYwK0loQOj1jSvH9d8Zgsf8EiFfh+QzFk37z1/yOXMWVPWKNa
 PXgFoQNEEdTSQDcyqlaAh9+PyExrNFRcCFAIHuX7g5cma0yDci3SRryO2Kk9qOuFOmbb
 pyC9s8iPb+GfljNG+GTpKBoNBxhPoz/UdJs7sHGl/0MG1pewPhj1HKtwTf8tCbqid4vG
 ntGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rdnkv68QQM90C5QWNTYgPjC6Dj76JDdVz07nlfyP5ZQ=;
 b=AhBJV7XTfSkpF4S/FTGYm8059dEouUXnUXZSBGNY8GeSj6XwQJRUr1ixmG35m3AKmP
 Bu0E+E71PVZco0r83bGLXTmZFr9KnfqqMjX2yrkuinLHYRj3WHXGdvcmp8E1iFLMLUfJ
 TeK7J9brtA9fPU3U7+P1MOFE+QEAtQV0kBS+EgyCH85lY6rQczvO/pK7R8eVbR4YnRN0
 y00W2Giwc1DXWkNwbQAXdVxCir/c49TWqgqwK6RV2g1HTDgehh6sOiuWLuGz6sWaL+4h
 lsk8bQ5HqV7Pt2FiI20XG8gfbWz49UtKEa4Zg97t8TAl/2gikbO1tJ7k0gmajNo5dvl5
 7kAQ==
X-Gm-Message-State: APjAAAVlT0EHnZ5Yka6zDfsA7gqJT0GQgKPx5Un4i+L3XXi4FpWybBND
 D3SowyTolwTU73CftB+z6B0YZ+dHtN90BcghIdw=
X-Google-Smtp-Source: APXvYqw9zQWawZNBHmOZsCkDsL6jKqCMRayKffZHiF0OiFQ6eYUoHK9eVpmVK9vgG42NhaHXEfAmRCbZ+FTcS1ZnoHQ=
X-Received: by 2002:adf:f14a:: with SMTP id y10mr37882612wro.183.1560284208310; 
 Tue, 11 Jun 2019 13:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <1558024913-26502-1-git-send-email-kdasu.kdev@gmail.com>
 <1558024913-26502-2-git-send-email-kdasu.kdev@gmail.com>
 <CAFLxGvyZCpKthJevFHjjBQXo=j5f-FUip0MAsLy0HaoJzLZ2rA@mail.gmail.com>
 <CAC=U0a2UxMG2SuVCjv=TLzMs7Dg3yqJdxW6ft2tSQgEKj0C6ZQ@mail.gmail.com>
 <CAC=U0a3co4Ju94pEp4exDYNz=G7YnEztjdZWSjOBKTL+C_7g8Q@mail.gmail.com>
In-Reply-To: <CAC=U0a3co4Ju94pEp4exDYNz=G7YnEztjdZWSjOBKTL+C_7g8Q@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 11 Jun 2019 22:16:36 +0200
Message-ID: <CAFLxGvzMhDwoP5wqLFq-SUyDsyPNCMmiNgSr=FXFL6ee1uA4dw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mtd: nand: raw: brcmnand: When oops in progress
 use pio and interrupt polling
To: Kamal Dasu <kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_131650_751010_6D18AFFF 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:03 PM Kamal Dasu <kdasu.kdev@gmail.com> wrote:
>
> Richard,
>
> You have any other review comments/concerns with this patch, if not
> can you please sign off on it.

I'm fine with that approach.
I hoped to get some input from other MTD folks too :-(

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
