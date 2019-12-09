Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA57117606
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 20:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cM/tTjaNzHxwIBGLA4APf7DVJBLQNMs3oA8nxPjVM7M=; b=UycLsfk3oGnYOp
	0iO7CvwU0lNEE4uCsiyaLhUgoR/Q6E/LHJmhOVcMvK16cWnlLREXIOWgeDQzzp74WnzAg3SfGYGsn
	YyyQkC8l2UMs43BNJtOJxVaGIw1+6yPtGF92WJHyjHRVPIBnJM4Bln/kCdAUaQoe922IycwnVHyYU
	nIaHHEUsNmoQKI3RpHCrEGLJnutrvOUIH+eI3p15w5MDDL65DRd7n+PD2Cif8J/eU5x8h1nAmx7GY
	/17ddooTNR5BfJq80jXK7iDsJoAG8DYysVxAD1YfEfSWEIXPT7C9c9O9sn1FWwHM2dOcIwxFZr1Lu
	7Ycd3A3m/8vCdeGPSERg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieOsa-0002El-EM; Mon, 09 Dec 2019 19:39:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieOsS-0002E1-N4
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 19:39:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o11so6310449pjp.9
 for <linux-mtd@lists.infradead.org>; Mon, 09 Dec 2019 11:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CZOZ6zJl7K+CX7mG44VkFRrQ+i68m5YSb/XRoNfw+DM=;
 b=cW4C9MDbWPZGUL2QrgPCjB0Kp/VOcgvFhCO/fOV2FdsV6Fmyn34RGEZp6nYz3B0L/U
 NC6LVjFsXZ7e7s8ldMEKPHTN6JPqp3ecRM0qCEP0QR92IF/9INlM1cRpdqhanv/xXBzt
 APCGPnL/L/nEgk09GbrKDOcheaOt1bdr6yIX2tsR42on0pJRUkAsDb1X45XLrsIe4KKT
 T/j50QYlz3cLsKd6SgNYQDP7gECCoZHOvpP1bnKJgyYZPJZmd0CYAFEHkzt4mLJ6fyfv
 Tx2/YEoC7BcO4KzAgFrpOFtp3G9pv280/bKtJz2pngoo28+1Y7rbrCp+R8AxexbFmK/G
 NZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=CZOZ6zJl7K+CX7mG44VkFRrQ+i68m5YSb/XRoNfw+DM=;
 b=fia50lvNY2wg+IbB69P/9+1uQVG1mXRnNzbUps5QKLFJoJPWNRCFx3xoAo+M7dW2cj
 +7CptpufaDh4ZvV0t0Q+g4+YaTq4TwBGiOTgMR886elTtvYm8lZcHJsNv4XZkAHTqBJ+
 MwTLGDcMM7U4zc+RS9ZAhYGITgl9J1X8kFrH5r12NgjbXDdQ1tfUpRJyaxFC1/FSs4/2
 l8KYqw75hLDrO+T60Emma59I9GtiQIU4eQTRCEaiFKShou4bj4u+ETvIKwqq8vQlqUXF
 eM9eJ5rJhYUVIxRySpkKjSshs4ZPB5Jboar/l5dtClOzkG+SvOcxB05lmo09vWrKJh5e
 rjfg==
X-Gm-Message-State: APjAAAXIE28DIde7dsmy5v5hUbh7Z3+OZ8/EjQpYJWYvezrR4yHiKM++
 oyalWzPHsnXyY291ryHeJQxsVnEs0LQ5cIOzYUY=
X-Google-Smtp-Source: APXvYqxWG8x6n0ZEVQ6OUPqMWrnMjuToNaNmWUIGVo2zDSE51wp3s2VGh7M7VMSM93MItZEAEYoZcOa5hD0be6SuKiQ=
X-Received: by 2002:a17:90b:110d:: with SMTP id
 gi13mr773794pjb.113.1575920366573; 
 Mon, 09 Dec 2019 11:39:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:24a8:0:0:0:0 with HTTP; Mon, 9 Dec 2019 11:39:25
 -0800 (PST)
From: Aziz Dake <pauwill066@gmail.com>
Date: Mon, 9 Dec 2019 15:39:25 -0400
Message-ID: <CAO2feTDvkztmyMz4CRhdvbbp1ybEFeZ3ft66yTEgEPEZC06_fQ@mail.gmail.com>
Subject: You should read will before reply, Honourable Barrister Aziz Dake..
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_113928_753015_BC9ED682 
X-CRM114-Status: UNSURE (  -1.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pauwill066[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (azizdake0[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (pauwill066[at]gmail.com)
 2.7 MILLION_HUNDRED        BODY: Million "One to Nine" Hundred
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: azizdake0@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QXR0bjogU2lyL01hZGFtCgpJIGFtIEhvbm91cmFibGUgQmFycmlzdGVyIEF6aXogdGhlIHBlcnNv
bmFsIHJlc2lkZW50IEF0dG9ybmV5IGhlcmUgaW4KQnVya2luYSBGYXNvIHRvIExhdGUgTXIuIE11
YW1tYXIgTXVoYW1tYWQgQWJ1IE1pbnlhciBhbC1HYWRkYWZpIG9mCkxpYnlhIGMuIDE5NDIg4oCT
IDIwIE9jdG9iZXIgMjAxMS4KCk15IGNsaWVudCBMYXRlIE1yLiBNdWFtbWFyIE11aGFtbWFkIEFi
dSBNaW55YXIgYWwtR2FkZGFmaSBjLiAxOTQyIOKAkyAyMApPY3RvYmVyIDIwMTEsIHdhcyBoYXZp
bmcgYSBkZXBvc2l0IHN1bSBvZiB7dGhpcnR5IG1pbGxpb24gZm91ciBIdW5kcmVkCnRob3VzYW5k
IHVuaXRlZCBzdGF0ZSBkb2xsYXJzfSBvbmx5ICgkMzAuNE0gVVNEKSB3aXRoIGEgc2VjdXJpdHkK
ZmluYW5jZSBmaXJtIGFmZmlsaWF0ZWQgd2l0aCBBZnJpY2FuIGRldmVsb3BtZW50IGJhbmsgaGVy
ZSBpbiBCdXJraW5hCkZhc28uCgpXaXRoIHRoZSBhYm92ZSBleHBsYW5hdGlvbuKAmXMgSSB3YW50
IHRvIG1vdmUgdGhpcyBtb25leSBmcm9tIEJ1cmtpbmEKRmFzbyB0byB5b3VyIGNvdW50cnksIGFm
ZmlkYXZpdCBvbiB5b3VyIG5hbWUsIGJ1dCBub3RlIHRoYXQgdGhpcyBpcyBhCmRlYWwgYmV0d2Vl
biBtZSBhbmQgeW91IGFuZCBzaG91bGQgbm90IGJlIHJlbGF0ZWQgdG8gYW55Ym9keSB1bnRpbCB0
aGUKZGVhbCBpcyBvdmVyIGZvciBzZWN1cml0eSByZWFzb25zLCBwbGVhc2UgaWYgaW50ZXJlc3Rl
ZCByZXBseSBhcyBzb29uCmFzIHBvc3NpYmxlLgoKVGhhbmtzLApIb25vdXJhYmxlIEJhcnJpc3Rl
ciBBeml6IERha2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
