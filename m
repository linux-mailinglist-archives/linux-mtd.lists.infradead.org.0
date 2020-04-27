Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9F11BADF5
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnuDYmt9iBIGLjIAaFC70cq6gNfe0elwElrjZh21ORc=; b=aRPm1hWRWXQkdS
	7GC43cS9vcA9cMT2kMI6wRWwOe6jq7rEkCqL6h8VQ47/IDS/Oks0DPBkID+oC3TxemzwC7/QCdC/d
	5etXLM88tgB/sZSKAhstY+c05t3cLUkIoAhq35xgs4wd9X1qhN9qdG4cOxTfvH+Y20G9t8/eoBh4S
	rfJmqBJ7dxr2Qwjmv9SGmaBVD7Jx8ifWGWRbq8yUgh1Ggr/uq+e0PJgXbn9n60S0687pbHzgDY8OA
	eV2Gu3QeUfdZi3hl/t1+sReEaBBkBvJV+E+QBDb8Bd5IWCfBmZWv1eKgjzSjOnBWoXbrxyZ+xnoK6
	aM72F6f9H+UJ8XJpjWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9TY-0002ST-1P; Mon, 27 Apr 2020 19:31:32 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9TL-0002RC-6R
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:31:20 +0000
Received: by mail-ot1-x341.google.com with SMTP id g14so28268175otg.10
 for <linux-mtd@lists.infradead.org>; Mon, 27 Apr 2020 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OdKYcKK283ta6m41viMa2pPOtaX8GD+Y8R7sugz3aQk=;
 b=JeAn/NN7+mbSz5+yKXi3oMrd+yH9/fVQDtTRAGRyNkZC4Yqft6LFoILGjl07clh5Iy
 jo5sIfaLR56zjvrO2FN/mjEwImlXcLY/QU2LBfSKkIXs8xO58P2Rngq5W1dxq390FPz/
 MTHq0W6Wzh9aB98ICg6I0mwuLjALv7i/jWx++yFFolAbGTsLj4+4pXDO1OiVB0WrxeIK
 2kCotfC3811F3d5gV+pEoxL/oUMqwU71yZzdwnQJt27EuEnZMcxdrD0OA1NW2fGOkLKb
 pO8pmOTsC4mQtu6w1SmQicY1rda4HQnyKBXdyLUigtMDT/aMR+LXP1F3as0bf6LOZDHi
 U2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OdKYcKK283ta6m41viMa2pPOtaX8GD+Y8R7sugz3aQk=;
 b=Bs97FZlXCIkdwysFl0ivMtydLFlKc8GwK9gUnkBVCBtq7y3T2Y3E0XiQ1Eor/4pvC4
 DJpM9vav17MuEihB+Eft76ZBXTT5zTEPyslJFTlJusF0MHUmpR+vR0LuP7ijlHtR8uRG
 UwNvIPwKZaYhgcscMcKpHU9MZuLJqpY8K29sMAxpygZw85+kv/E5EPAUOICDrtXkWtsk
 elRikeMibol0xJmksGf4WnZ2gCzrj7gHx4sXAFUxP2M8jMmaB5swcn74+QBdu7vd7F9w
 XnOzzveF2oJD5Cq5nMpU4DC8VoBDW7GzmWeIWK274/nkV/YCsEgDxnRHW0+1fAd/U1pz
 6e5w==
X-Gm-Message-State: AGi0PuYSHgA4q0h6vn4tAndkMFD+ZbvVBAXAvi1xFvq5XNhcScv80ffX
 PzbSPaHQ1cFb8ZLme7w+6lmHfi2Dlr2FSfRd891U+fLS
X-Google-Smtp-Source: APiQypKdGUsff0fbELzATkdLnvXyf4gErquN4L/Q6h+PiJdx9SrWVlLkCFJreBAjFWY+AARNSc2riVd7YsDVwnkQ2pY=
X-Received: by 2002:a9d:1429:: with SMTP id h38mr19999448oth.285.1588015878458; 
 Mon, 27 Apr 2020 12:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com> <20200327171907.7a7ffc73@xps13>
 <20200327164802.GN2564@lahna.fi.intel.com> <20200327175238.784cf47c@xps13>
 <CAP6exYJ4-pBBZKA0z8TKPqh_0tKzJadjXEBZk9dc9ij8BJ9Xew@mail.gmail.com>
 <20200327171619.GO2564@lahna.fi.intel.com>
 <CAP6exYJWWT2SFLjPCdjAEEjmZYwqYuTxd_aRaf=xEELmXqfMpA@mail.gmail.com>
 <CAP6exY+p-Chi2R4Y1H8UvcbE6rvEpMiK3UaX2OyBq=ZO6uULpg@mail.gmail.com>
 <20200330060859.GR2564@lahna.fi.intel.com> <20200330092722.2ff41863@xps13>
 <CAP6exY+F2VoEZkwcYp38HNt7NyZucQrdQ8MqQyTQ62U12pAcSw@mail.gmail.com>
 <20200401094148.1786d48a@xps13> <20200427111623.5f93842d@collabora.com>
 <20200427114954.4fc0e8fc@collabora.com> <20200427164138.05076f3a@xps13>
 <CAP6exYJbpmxQztCOHum-k_CqmCDrJewZaYWk-Bsxy2dsYibbaQ@mail.gmail.com>
 <CAP6exYKtHVZrs=v+g+XU0Rx9qvFZ+xj9St7=ZZV+JLHSQy0BaA@mail.gmail.com>
 <20200427205636.14f84490@xps13> <20200427212104.74d7b9d8@collabora.com>
In-Reply-To: <20200427212104.74d7b9d8@collabora.com>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 27 Apr 2020 12:31:07 -0700
Message-ID: <CAP6exYLO+YwQgP8EyTBs0hijLSMDgKPf1K9zZynCmQfz6dZOcA@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123119_237868_9EBE7EF9 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 12:21 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:

> you can keep the PCI device id nicely enclosed in the [] brackets. So
> that's up to you. The main advantage of this simple patch is that it
> nicely supports existing device names containing one or more colons.

totally agree.

So, sadly, today I am using gmail. Do you know if a reply from me to
Boris' email will break everything as gmail messes up email so badly
(tab -> space, etc.)

advice on that?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
