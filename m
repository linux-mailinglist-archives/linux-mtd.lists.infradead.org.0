Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0ACAE2E
	for <lists+linux-mtd@lfdr.de>; Thu,  3 Oct 2019 20:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sx30btLOdJq2UdMZPmIOvOAhRj6vYKTkgAqAvOOvhB4=; b=QXH55qfBYCOCAt
	S0eAjVY9q1lTJNdNRQvSXt/RRDsbh4Cl9s2phGwavpCKSc6TUEnVg7LW939PhnXvcieDtmT4Rj1+u
	CUL2R50Kxi7YT9OgJoXy0XEmCnuwLkFzYfXJoLy+TlAklOd2Z07T4I3F/YQCiU36D8s/oXextlWy4
	jxyIlcor+Ce4c55T1dvS4cmh5AvyC5tj1bwwMyzOGat8Drpro//FbjIpes+G5VqShzGMcgT4EpqQy
	dST9HcAiEfVC1w/17IkPhhxo8PoI6xnPgHF1+1sUrzrYNUJ9vEeGOzhQM0daeEr1ejrsSPZ8rJpRn
	rNlmHzUK4BNnJdRpf7cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5rj-0001cS-24; Thu, 03 Oct 2019 18:30:15 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5rV-0001RI-SW
 for linux-mtd@lists.infradead.org; Thu, 03 Oct 2019 18:30:03 +0000
Received: by mail-lj1-x233.google.com with SMTP id l21so3879013lje.4
 for <linux-mtd@lists.infradead.org>; Thu, 03 Oct 2019 11:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=d/gGyiYhyh0pQealueXwZu++5LVR9ocpFVa++4fHBxQ=;
 b=ylxFNw5oi8G8WovX1HEuA+1/I4klfHi4f2dSzy8yXogGK8bq+zngar93oa12ytA6TK
 ZObfkRAwBbzv7fDQ/lZ29hGX9c9KHtj5OtFNpbvTzK5SYxxVpTszbULDqPRBkJQLuWQE
 gz7yW0Yim2RS2Qldkklj+fNf4lyiVg9o/borqylkreYKqi0IuX9XlceA2It96nZn3nJm
 GD8GMRe2Yjbx4cQw1oAasgap7XsgUT8JQQ/WMf5psYss7BbJ8oZ0LUMtEp0cqHQrI/TZ
 5K1t8H0jt4qfAxsVORMSwObeo5OVuGJOpXTwiz6bXMXqpTPVFV6AVSLV4XjnFm2bD0Gq
 5ZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=d/gGyiYhyh0pQealueXwZu++5LVR9ocpFVa++4fHBxQ=;
 b=gMF52npyVeIvyVhkOc/b4DTSHSJusAtn5OUVDLfcazOUxXkLz9phJlMYtQINNr5YP0
 47AnZRcNZ3msqM1cV5REGfbmH4Ze0Ap5iN2gE09XYfTUJcXNrSJRHThipVdK8P/k6NXM
 JkJaf62E/lg4KfNM/Bdav1NqAOr1Y+viv40qfS+lwhANXJez6ZqheFloq7wq9lPDINjd
 UxseJCcNgxiEPKNHp2lQJgs8NKGpatYElEbT8nehp8IS1RDRqHKgZ4JaOPpx8GNzi5iF
 fc97htPm1BoYulU/UjRr3MdBJAZ4VJYL0uyKvugmnD9HvehCjWbo9VmorXlBHx6UnbjY
 yTAg==
X-Gm-Message-State: APjAAAUqiMGC6mzLlbOdo13RlWxlf4v3AsgMG9SnstwXsz8Qci71SFDD
 PdimC2DjZViHaOjLEA2FtGZnrXRlq/I=
X-Google-Smtp-Source: APXvYqxG704kNjnt87MW7SNe9/lIx+5ib14i2sgnHvFYTgBdEI9qs6A1MDk1ZakZjxstNUeR6RP8Mw==
X-Received: by 2002:a2e:6e04:: with SMTP id j4mr6089740ljc.99.1570127399474;
 Thu, 03 Oct 2019 11:29:59 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4289:fe73:b1e7:ad72:df1a:c82e])
 by smtp.gmail.com with ESMTPSA id p27sm621338lfo.95.2019.10.03.11.29.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:29:58 -0700 (PDT)
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH 0/2] Fix the HyperFlash support in the AMD/Fujitsu/Spansion
 CFI driver
Organization: Cogent Embedded
Message-ID: <b93bf510-8812-3f82-29f3-43f41d08550a@cogentembedded.com>
Date: Thu, 3 Oct 2019 21:29:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_113002_061714_BA6A4308 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hello!

Here's a set of 2 patches against the current Linus' tree (the 'mtd/fixes'
branch of the MTD repo is outdated).
Linux 5.4-rc1 received initial support for the HyperFlash. However, the patch
adding the status register polling to the AMD/Fujitsu/Spansion CFI driver has
couple issues which I'm trying to solve here...

[1/2] mtd: cfi_cmdset_0002: only check errors when ready in cfi_check_err_status()
[2/2] mtd: cfi_cmdset_0002: fix delayed error detection on HyperFlash

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
