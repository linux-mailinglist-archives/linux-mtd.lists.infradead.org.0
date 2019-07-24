Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1C073364
	for <lists+linux-mtd@lfdr.de>; Wed, 24 Jul 2019 18:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7rLDC+9Y0KKQloeLW52qzQfb7KwBW4dfrMe4mimzDS4=; b=tHg
	J4m/mo1dGPZP8cz9K/KI7hYxxDl75KYhT3YrTCC6hQuMpHdRc53ubZyW+nbpFi/Kev+h12U8dRcua
	WFpb7fq3eq2D4waQGiheUtRwBPs/IOYU0XQ/lRck4Jq66/TLmUILD9fvCCaFeTrjGjlNhUTqop9Zt
	WzJDjczCcIFFFT1KTrcesWRggMureKBJRXC2Hu/xrRsFmLpc9hQ5m1psCV98iXizZA2Az5NulG8f0
	6DKoc1KCwuIUZ7Z64c3tVFbnQJiJznB65KSp/DGWjizSpZrMgYLQyZOd5ZMu31L9IhBvCHZylAooU
	PKeXWjM/hQa2T5iMC4vX8WTFFbD3N3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJpj-0000S7-PB; Wed, 24 Jul 2019 16:09:39 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJpY-0000RD-NT
 for linux-mtd@lists.infradead.org; Wed, 24 Jul 2019 16:09:29 +0000
Received: by mail-yw1-xc41.google.com with SMTP id z63so18290558ywz.9
 for <linux-mtd@lists.infradead.org>; Wed, 24 Jul 2019 09:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=5pJVVIp/LwA+Md6ojMBb/FcTZbPOtUyucJPo//AZiFY=;
 b=Z+wtbQFrfmyBc2rSQ0+k/56jmv58NCJZ1o+Esux6vSn6h2M8BgKKMuzD6ZI/KYWl0y
 Pgz4MJ6EQ2TFpubszTjXuCFWLUHgKNLJtOmXYTgRkkYuU1uPWo44VQPI/bWFb6Rh2c9C
 GHgbYxAJfFOvY1YNCCzqbBKzo2ubijP1C2e0ln9DKHNDlK3tpWvLm4erwkLYQcqv4z1h
 xLr5gBZTf1hgCAFyWKJXkq5Jz2+BNMhLGuQOjThftGYyl0hLq4mijsRMrvR1FQr3q9N9
 lArKn4oUyRqcRXhJeKtBmabI8MVCKqwO1XRyEohNplrE+qAAG8wVoeL85qGI2QmMAGnR
 HyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5pJVVIp/LwA+Md6ojMBb/FcTZbPOtUyucJPo//AZiFY=;
 b=mzVJ2f2K2WOzGq2fpedMpZOo/Nn3DgaG5L25ElW/NrGNDKG0M69uaMwO+YwGC+ddeF
 VXMQBXxecEld3XjbWVEGUHr1ve8+2ZePJ84cLGYkw1k0PNaKtiS7zHVul5tQvEsaHKzu
 EMNvOyWnOuTAoBSRZMTAGZ9fo2xS5ku6yA/0EzW0plYA088j56+1VERQH1pyHLyAJPpa
 bKkMV5ex39v+t1CqTLhGyYR6xgcJwnCOeH6c0cet71LISvs4V8kCdTaxnjuxW+vAIFT7
 g0yQJ7K8WTbXRrRcjmm+/VwjI6BTL5XP4Opkw5GcYG8g0PxPaD3tldoLEnlGxprWjvaL
 U5yQ==
X-Gm-Message-State: APjAAAUUDNuupyNdF/w4nf2g3buI2tuKzUX885JFK4vz2z3H8sHtCVCr
 uOy/ooFOvTK59tISfxVPzkKWD4hAs2xbWlBzdmM=
X-Google-Smtp-Source: APXvYqzuwBMt+MojgXRiEnR2dNLv7709UBYq2H/K/AsMPAScOlsvD3Ro2JqBd2LbFOMDPcoXI8cpyzHwdgMvjOWnvZg=
X-Received: by 2002:a81:2e81:: with SMTP id
 u123mr46926578ywu.455.1563984566305; 
 Wed, 24 Jul 2019 09:09:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:140c:0:0:0:0:0 with HTTP; Wed, 24 Jul 2019 09:09:26
 -0700 (PDT)
From: nelson mark <nmark6507@gmail.com>
Date: Wed, 24 Jul 2019 09:09:26 -0700
Message-ID: <CABa0ZKM=U6MOd_wAD+1fqTexOds6u1ejEmzNFjt1GZFHdn+8tg@mail.gmail.com>
Subject: CAN YOU SUPPLY?
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_090928_787228_CDE5BE54 
X-CRM114-Status: UNSURE (  -0.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (nmark6507[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nmark6507[at]gmail.com)
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Attn:Sir/Madam,

Tender is open to all potential suppliers in the Contract Procurement
Board (CPB) here in Ghana for the supply of your products. This Tender
is open to Foreign suppliers whose company products meet international
standards and also willing to bid for a tender and if your not
interested to bid please do not reply.

Terms of Payment: If the Contract is awarded to your company,An
upfront payment of 80% (T/T) will be made to your account, while 20%
will be paid before shipment.

This Projects is for companies who are very ready to apply for Tender
bids and have understanding the meaning of bidding for contract supply
and you will need to do official tender registration with the Contract
Procurement Board (CPB) when you are submitting your bidding documents
for approval before award.

I am a commission agent.

Regards
Mr.Nelson
Accra-Ghana

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
