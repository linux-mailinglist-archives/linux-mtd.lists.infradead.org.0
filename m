Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A5152847
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 10:27:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WiMPbqN/Jp80sfelPu9m7+8wHrqLeH0p7fiQFPwKtnQ=; b=NCtqdFRW/dAGuB
	qMmZb0XqatzSD6j6+66IsT3I2nXYTPicdODh85/JTh0fNTrexTs0XAcwidgZzVwVxYGLcRuSnpbj1
	/BhhJp9Xg1/lPit4OUGXirtQ9r3e0IbqAa4B2+siE4RNImrJlNuLZ4w9UUuQ7vXw5bxLUODkEd0zU
	QH2kJFeo96CCqzDb/wUkds+Yy4WoAFwh5AZlJ5TySGiSeaZujZnVAmw/vE8DTra481Y8kEhGa9Aek
	l7jXjdHIUc65rHigHzrtIOpCJ5DGPcAO6Jn5NRAKojpwexfXSRawQ48SmEZWYAx1ThwMMrBAoNDh5
	n8W2RbnPiRRzZIeD0BDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izGyG-0001U0-UF; Wed, 05 Feb 2020 09:27:44 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izGy8-0001TB-LN
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 09:27:37 +0000
Received: by mail-pj1-x1041.google.com with SMTP id j17so739333pjz.3
 for <linux-mtd@lists.infradead.org>; Wed, 05 Feb 2020 01:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KHzpm2mS2q1zks9PiDnpuujQ8A3/Outo+3RVvOxUyR4=;
 b=Qt0qRg63J2ZKZpJ9ztYY3BVnR5aTiKxF6iLrS6xB4FOFYDPMjcQ1LC6RhPy9L7Vs2N
 Nn4B/HcfrEzJ9TSzfkEm28eOTg0tKa+naYoBhvH5QkoDqeNNS73v/jS00rYCSDDUdmY6
 ivcC+ZjizULVK2WI6FI6rIw0X7iL4c9Ieyh9bwcwmg07Jd+hXpn7RKpyQ1gD/Bwe3REd
 5NjHd4r34ZRlmGMyYyAlTCjHKYFJs3+kjRh7vSQrigrTudtuGcbOzz30LDq0dlg4WYna
 ANLaRhEkWH+3Lst5OSy3+aB9NWTj8XEQBpGRinNxxtRnSvjT2b9hRx7EZI8X56msh92+
 aKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=KHzpm2mS2q1zks9PiDnpuujQ8A3/Outo+3RVvOxUyR4=;
 b=NkS48R3w+ZVNIrAgd4ZxIEGEs82TfU77mH+FrxBofNKcNC64PGMoTrOrDnxwXQMO4e
 5iiW2SrIyvycFzNAIxSJwh5H1L5jo2kpp7kBC3cwMwvxfSdMWQ1PWpYJqEFPdp/MIYG6
 d1PCnjp4/5gDj3NGYLkgNGIZQpdK/rGuspEb3WXZp0Ajv5jwrau0OBLpTyyDI5U2Xo0X
 gCdnNxRppdMQAEse19/vpQN2NiolHjL3lYyQGjtYNZBBkcKHkdZZDVhKEuSngQlp+2cH
 NQ+0/npFKQAMFSv5FUoBvprVy8ep/Cerr1OMmtJxh/L1bZ1G8hpQEn/GDPNrVItP3xog
 thJg==
X-Gm-Message-State: APjAAAU45XaKPO066eNFa0sVJW9qIjxgLvzdP1BMWjQebWm5t5y/pwpp
 r9gFMX5icHapeDc8Ke2tfKwFKXWRWCjYS7HfS3U=
X-Google-Smtp-Source: APXvYqwGBMLAbBWY+yUnPbyGAO3e5bi4Q2eh6Se9Ji7XY3L6jNLNvukSNdDNrY1C28e3fYk3FnWJhbtkT45vvzhDAy0=
X-Received: by 2002:a17:90a:35e6:: with SMTP id
 r93mr4553010pjb.44.1580894855748; 
 Wed, 05 Feb 2020 01:27:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:cf0e:0:0:0:0 with HTTP; Wed, 5 Feb 2020 01:27:35
 -0800 (PST)
From: Jessica Meir <jessicaumeir638@gmail.com>
Date: Wed, 5 Feb 2020 09:27:35 +0000
Message-ID: <CAE7R3m1mrnFz1c1iiRfOf0L5MoQ8pZTXEtO6QXnHff_AV8FCgA@mail.gmail.com>
Subject: =?UTF-8?Q?Tere=2C_minu_nimi_on_Jessica=2C_kas_saite_mu_s=C3=B5numi?=
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_012736_723365_D5B916FA 
X-CRM114-Status: UNSURE (  -0.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jessica.u.m1977[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jessicaumeir638[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jessicaumeir638[at]gmail.com]
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
Reply-To: jessica.u.m1977@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGVyZSwgbWludSBuaW1pIG9uIEplc3NpY2EsIGthcyBzYWl0ZSBtdSBzw7VudW1pCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
