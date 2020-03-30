Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD2919803A
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 17:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJmDPh2EFZtjV1f3A10VQPLcxTQ1tQDjuU7iQew1Afs=; b=rfDuoQKgkUcmfH
	XMJ6oOZJrQ3Ny0X14rK/OsAEh2m4AQ16xWGFe0Rzy/rPJ0NTC5pUWC2Jn3fapwBbjufnsk08emBBE
	+GLxKqNyG6bXiidw1WViRd4Yk87TKHeevNDH9zlOiwGiZje53MY5pfVWlRoQ/ettLZJQyqPxZr+FV
	VOb6JIBzsarb0XAmDiZVCaQCQYHc9HwRRQNS7XCikoQ3Bgv2M75AizLo+Uv0ohdIJceXHhNjRlXyJ
	301TcIJZtYpHfkJ5+WA/GB+OQVpS1dqw9qGNMXogNAo/t/r1lnxdLYn6lOQBWAZ5fHDkbPGqz5BAY
	IQyjpvOwApFAfbmOEzuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIwjU-0005HK-I4; Mon, 30 Mar 2020 15:53:48 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIwjJ-0005Gy-7l
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 15:53:38 +0000
Received: by mail-ot1-x341.google.com with SMTP id 22so18570675otf.0
 for <linux-mtd@lists.infradead.org>; Mon, 30 Mar 2020 08:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VVN3Re8xiB6SGwnlrtE3SUwCqIKN30aActygWBYWwJI=;
 b=l1WfGJkGioHMpTQMk8Mkd+HTBryTe2hCVAQ3mxfs5O9An5TRFIPlOzjDEjGcBONiZh
 /5FIyjS3MEOeGW6q2eRr3D82VS7HbKJNI48Vv44L7B073z1tpgxwX+xkwtuPrah+hzxs
 GafsVAzl7evLaSKGErq+ISUMBjNaVkamzV74zXh8ZFsYgvllEignemToBYHcVPirZJQQ
 Li5ccParGzclrPOELB0KZcoSgbdWZpeN3PnnlvZ0fnGoilQS4BLbUDbtVsfbgze4ZObW
 YZPvkYqLDy7tT2oF+wJ1Dayzm4yBqS0q9e2JEoteQ5HkLHs3fc8ypkLiS5ORvvIvSARq
 O7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VVN3Re8xiB6SGwnlrtE3SUwCqIKN30aActygWBYWwJI=;
 b=RgG4ok/AFEdWsJyzhWd41Rcmjw4KAGv9TU3JPzeyFELcWclr0r/tn1M/L4hVUiCfoQ
 MELgiS+LndMSqo4APV/p8mTsBc9fI3CWDjkqYqMAiIBmHY+Pu+SVywfjfZlYZ0g7FN6n
 v74Jt6nubUk4BRqVv0UsVoPSmh81WhdmYCUsWJXXbrYcKVPSUBMux4MALDJkXaUh3mUn
 A4GVYgD4dDbT6GVtUSvCMxZ/Uv1ZWCaBHMjWsVZsNpDj7Uk3IYYI1oqgPvCEeuFl+tzo
 CbFSQ5of6+6WOYXi5NrMiNQ3G129NmiNmCmcnEbfAv393zK5O9pIDCWFfQNUF6BcjdT9
 zfww==
X-Gm-Message-State: ANhLgQ0/AnJ2KOQO2SgW1zgaJEWgG9oMsiIwLhjXAKiCDRhiln2twHHC
 CDUpGc2nJe46zokHqZGorkQxL0WALapvpHKFu48=
X-Google-Smtp-Source: ADFU+vsIvkN+Zg8HX3N+h1ENMjldzwUZt3+HC8mCYHZrr5tOh6yUASpmk5RbM5PeCeNs9TcFRoUL9xDphFF3vtkeV6s=
X-Received: by 2002:a9d:412:: with SMTP id 18mr9498775otc.134.1585583613865;
 Mon, 30 Mar 2020 08:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com> <20200327171907.7a7ffc73@xps13>
 <20200327164802.GN2564@lahna.fi.intel.com> <20200327175238.784cf47c@xps13>
 <CAP6exYJ4-pBBZKA0z8TKPqh_0tKzJadjXEBZk9dc9ij8BJ9Xew@mail.gmail.com>
 <20200327171619.GO2564@lahna.fi.intel.com>
 <CAP6exYJWWT2SFLjPCdjAEEjmZYwqYuTxd_aRaf=xEELmXqfMpA@mail.gmail.com>
 <CAP6exY+p-Chi2R4Y1H8UvcbE6rvEpMiK3UaX2OyBq=ZO6uULpg@mail.gmail.com>
 <20200330060859.GR2564@lahna.fi.intel.com> <20200330092722.2ff41863@xps13>
In-Reply-To: <20200330092722.2ff41863@xps13>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 30 Mar 2020 08:53:22 -0700
Message-ID: <CAP6exY+F2VoEZkwcYp38HNt7NyZucQrdQ8MqQyTQ62U12pAcSw@mail.gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_085337_280217_54BC6A24 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 12:27 AM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:

> Would it be hard to support an extra ':' after the MTD device name?
> This way would would allow anything inside the optional '(' ')' but
> would keep the trailing ':'.
>
> toTay:
>         mtdparts=name:part1,part2
>
> So:
>         mtdparts=(0000:00:1f.5):25165824(BIOS),-(squashfs)


I thought about that ':' too. It does add a bit more to the code, and
a bit more in the way of error cases. I always worry, when code is
going into flash,
about errors where something looks close to right but is wrong. (says
the person who just typed it instead of is a few times :-)

What if we did this:
mtdparts=[0000:00:1f.5]25165824(BIOS),-(squashfs)

Is the "]" 'enough different' that we do not need the ':'?

I kind of like the [] better anyway as it makes the mtdid stand out a
bit more from the part names? But is it enough that we don't need the
':'? Would you still prefer the () as opposed to the []?

I'll do what you feel is best, however, I'm still getting back into this area.

Thanks again!

ron

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
