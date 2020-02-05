Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA015280C
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 10:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WiMPbqN/Jp80sfelPu9m7+8wHrqLeH0p7fiQFPwKtnQ=; b=n+992gBeKQeqnX
	2UAiH7r+eotCohfk8whWdCipoNpHpy+r0OPLbdPFugErICv79gTkdlPTyivuiTrg2Gp1sj2mLwY1j
	Rw2wOlIdQLXZot8HNnwvOWU2JZjYKAgGJXCsVjD1NBrsyH184ts7xoGJSZbjQwYjE3hpfHiNOjeTm
	P2St5uHBuAjvCxn3OqaYlCStoml01dx2nIh5KPpCmuZfaXllLk2gDCyotn3kDYwWJNGPqy0ybK6FU
	Yaja+wSCiy/1dwJ6t+e/TrMjXtVoN5Ltk6rpxNAXJ8d0fioVj5LsFBwwgsTRLQdJjXCO8x2MRRo+7
	+9SqX/nqLJmZS7DqyMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izGi5-0003c0-V7; Wed, 05 Feb 2020 09:11:01 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izGhx-0003SU-LB
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 09:10:54 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 7so849175vsr.10
 for <linux-mtd@lists.infradead.org>; Wed, 05 Feb 2020 01:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KHzpm2mS2q1zks9PiDnpuujQ8A3/Outo+3RVvOxUyR4=;
 b=PkMRnS2CbkfMI3TsAn1tS/ZNm+s1eLWsx5f2f+mwvm8nLZ0AMgIMewFEThnp+ewdqv
 YtggCXmMytiQkAIvB8e/o84qWyw7FVCT+1Qh6/IQla3+3ciVCAzcxJFDUE2GpOz0iqU1
 SMMrQnUZHdruD1RbkX4H8Djmlnd4RfITo58sDFwZx3u1H5KtOl/gFuLHMuxnBd56ND6S
 F5kSR9iiSI8wUBwb7Ko0Q3CxmamNG8I9S0yY9WZKVNVaciXpOZYMwtyaB8zOb2tnfpst
 P7gl+n2Y4o3IpxlOWGykmeaqXIP/tq+s613WymTx4+IQes/xiBg2LYw1jNGUuYgMd77f
 fC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=KHzpm2mS2q1zks9PiDnpuujQ8A3/Outo+3RVvOxUyR4=;
 b=Reno3qhhAz25HsUYOYrvcvHRqSG7aIt2zStngxpqIf5hFL68wuQPNnMX8NnJhq+VbW
 lGC36y9cKxpOIIZ89re1fTqi9BigmbfreB1aWnNnYg84sSIinGtd/PQ8/b1qzW7pP5xy
 5RXoPQ8twRsPBD+vfO5yK6iQfLvlr29nuPEYb4/fJ6qQXnsEj0TM4z4J3GlUVwmb07n8
 qNmVp0Ob00Qe83o/uq5DUZBRpGCJXqgvhfUfvLK/DPRqeWviCJ0k5wCmYEZ0LzCIbI1I
 6kmiMzrFtshcQNqdN7r/MUlmn11LQBUw+6r3InnC0nbU142lkTp5/Fj3R6BW4EHO0Lpm
 tkIw==
X-Gm-Message-State: APjAAAXvCd4Yd6Rg8aGVUWOB5AWlhoXjD0KZ8g1T1cZWvS4H45ZJf0qz
 lr99SpxMl2AGd583UeRGa1jJG1GnV5geZnyk6T0=
X-Google-Smtp-Source: APXvYqwfiG3EVezTnDx1JFoF5BlB9NVJW5PA85H7emxE3qZgkTlS5bVVtYdIxCaq1Yfbek0GxCqM54BgTNaaFkXi8bw=
X-Received: by 2002:a67:2505:: with SMTP id l5mr20783377vsl.204.1580893852339; 
 Wed, 05 Feb 2020 01:10:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a67:8055:0:0:0:0:0 with HTTP;
 Wed, 5 Feb 2020 01:10:51 -0800 (PST)
From: Jessica Meir <jessicaumeir6@gmail.com>
Date: Wed, 5 Feb 2020 09:10:51 +0000
Message-ID: <CAFe+Vfw_3Emao59TGuO9WtfqwpQHvLmyQODCKoSpyh+p9evauA@mail.gmail.com>
Subject: =?UTF-8?Q?Tere=2C_minu_nimi_on_Jessica=2C_kas_saite_mu_s=C3=B5numi?=
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_011053_698056_CE2C7403 
X-CRM114-Status: UNSURE (  -0.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jessica.u.m1977[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jessicaumeir6[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jessicaumeir6[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Jessica.u.m1977@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGVyZSwgbWludSBuaW1pIG9uIEplc3NpY2EsIGthcyBzYWl0ZSBtdSBzw7VudW1pCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
