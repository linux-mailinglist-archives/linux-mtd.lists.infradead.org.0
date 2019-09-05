Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13FDAA20A
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Sep 2019 13:55:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFVjB1XlEngRIR/q/4b7lXACERpj7545kbAdK28oJa8=; b=Nvdwk9TL/AgUKW
	vhJjNQpVsQPJhvC/YiqzcWyCRny9y6y9J4qd3EpThVZIWp3r1rgwvugnuoicXdRI3Ah7DZFVEZV71
	6ctMxzmIMrTN4bFQYY4sy84/SSXhq86KR8tmmrT8VgJJznhPpcfz+V9ru0+PNNfZ0wsLSr252v+Yy
	wRqwAyCRUR3xhul5Qih9QOQDW8cBnKpqtPoj7UyZQZBwllxOMT/FHU1ZxquHNikKi8eDV52q0PIT5
	IL0VdVI8OSX9lHu9tpyYecaECSD7vJZmIGNlRCML54my2iXCVOd3OYZqojNlPw3RS7T2NFoCyw29y
	GyUg16Jr1/orQQQplguQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qLq-0002b1-Q3; Thu, 05 Sep 2019 11:54:58 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qLa-0002ai-6T
 for linux-mtd@lists.infradead.org; Thu, 05 Sep 2019 11:54:43 +0000
Received: by mail-wr1-x435.google.com with SMTP id i1so1846153wro.4
 for <linux-mtd@lists.infradead.org>; Thu, 05 Sep 2019 04:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MpM5noks/Dl5Y1ENGwmL1H1E60f7A2U62KfUM7KCtP0=;
 b=JpOw9DxT61OxUSXLWQnB/seNUVaJsMG4GYvRMiohxSRemrVX9Hw7jaWv6vh4o0Oj0q
 UgmoH7olJjOF+yvKNXoad7MIFAkOxWzPRDbJA5cCl5M5x1VeNfZpMNdHMfknuT303aE3
 fxh9ugTipMqSRwSU9S2u6BBhgE1M8xY+Fd+wkNGphoIji/jLX7iqCJMhdLswWIW8iyh1
 Cvrpdf1Ly5VkMk+UXSr30lAa/isgkILQ+4HeBgqrPWsJzlEgiOZ01f4Hj2b1ejBSiyI0
 0/mdWecv8CcSVp7DWfxrRobcHcZi/BYuyoh1YccDUVAOuPPh9kwpmhQhVkvdnMmu/oIO
 3anA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MpM5noks/Dl5Y1ENGwmL1H1E60f7A2U62KfUM7KCtP0=;
 b=fjM2pxa1qBX9wwzjilXXGvbvMoHycqkiOggZfc9c83LnwoS0g68ZbV+Lc7OtcmdQck
 CQWJ1Z/TjceXAj0CHRZq6lFXAsSMlAmUBqE0ATmlEXRN4uIGH+tS909WYzCmY+p1e0l2
 5OIb2QtHPY8XNIo782SPgJ9t3nawLV8hqwgOwcik5tunUkZRJrPDiPTTDj7JPQj1xE6t
 wd+gnA50ywTf5/MtMRTCCUT+IHs6TK1GZ66rLQuOtxJejzEZTeaW82fu+UzZHbVMITZt
 PjULdJPy1X1dO1kltBfZ4F7kLTxWvxnzDC7vuAguQrctGm1ZbqpxcgY05Tx3JXMyIHuS
 6Miw==
X-Gm-Message-State: APjAAAXNqwnImmkQjqJDiQaqrOrenrFFGhII36sDaEvY+5broiAjqwKU
 CvW/qAkQJRHhVLJYGxhHLY4KQxHt3rm9Pfba26g=
X-Google-Smtp-Source: APXvYqzMsNuqlO6FJLQUhgdYHK2vQpmslI/FNVAseYdZXhfzARK4o221kQtHw2hNv2f9LQK+E+EZwjMKRjfht6Jx1Lw=
X-Received: by 2002:adf:ed44:: with SMTP id u4mr2352748wro.185.1567684479973; 
 Thu, 05 Sep 2019 04:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTrrC1a_WSNb62ftn60fAMnq1jywVsjwess1=vGufXjLw@mail.gmail.com>
In-Reply-To: <CAA=hcWTrrC1a_WSNb62ftn60fAMnq1jywVsjwess1=vGufXjLw@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 5 Sep 2019 13:54:28 +0200
Message-ID: <CAFLxGvzqXs=m77Dmp+EVxYKM4gWc4AcU1ftW+S90rVtot1NvPg@mail.gmail.com>
Subject: Re: A big issue of NAND fragmentation
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045442_265681_AC1DEA6C 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 3:27 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I am running kernel 5.1.0 on iMX6 using NAND flash, I write small data
> files about 250 bytes each every 5 minutes to a backup storage, the
> total size of all data files is about 600 KB, but du shown me 9.7M is
> used in that directory. I know NAND using page to flush files, how
> does the MTD handler NAND fragmentation?

If you force UBIFS (I assume you use it) to persist 250 bytes,
it has to waste a full NAND page. This is how NAND works.
But UBIFS can pack such data chunks upon garbage collect when
it runs out of space.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
