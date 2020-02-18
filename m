Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF1C163494
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 22:15:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=adlpT6feMc0bCUIdkFklxFrhtFH66Nyov3rYNWP8KIc=; b=p33xZ6iMdagXix
	L0qyZFYMQblmo3CdWBBM5KTwdWmaq+01L7ZZDYnpCKWMG8yQVAzC0rsgvI/wQOkAlNKUcnIOQptRO
	CIPrdvkJfiAj/HfPt0+Ue+iNRhERrBjH64C/ziCZ1cbCxXWtS0IGJ27OXY12asflQFdTmk6lGjZTY
	QUnFNqIJqlRFFYeuOMP/oCaJUVc8IgLUD2cCvu+TONdRcTkN8EoUMavvIqhxTuTc9GbXr227ikNxQ
	2NSOPNYuPgHbeKi5CdyySS19hOsvjSeHhvrkR9kSBScalRYwi5CvZJ7C7x9zBKOVKDqmFVWhttm1G
	8ep0Fnra3uW662gZxhyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ACr-00009r-EK; Tue, 18 Feb 2020 21:15:01 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ACj-00009N-HE
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 21:14:54 +0000
Received: by mail-lj1-x233.google.com with SMTP id a13so24664864ljm.10
 for <linux-mtd@lists.infradead.org>; Tue, 18 Feb 2020 13:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=icFffhIclxJn4oDoIt/qWAkxFp4Z/KBWsnLQhDPkNrw=;
 b=fiKxEIdTKVIj6be4t6aEn0EvjIS0ItEsLIeVA22D5+Cv2opOldMEgxE4HFQqaheBAo
 Ov1bC1cELFL8VfSMoPSU125ip485fOaNB+rJlzmew59Rv2xQ4q9A6DSPnT9RUQGjXavV
 kY3hOoE+MCI/tApsu2HBVH8374W7VokxgxbKrGrUBgstkisnVRBJlWnLykEDvvLsIMui
 XVExoTBN6xwjDbItQg+KmVmknMoopP7IBQ9ZaEVwMkuDwrURaDDjYaAS5bU/Txjq2x/H
 ifMM34rvsCrQXFimwvohEyvQzGNbuGctb6DpOELIqJfid9VNq4z79NbMWPsZLxgNx/iN
 v76w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=icFffhIclxJn4oDoIt/qWAkxFp4Z/KBWsnLQhDPkNrw=;
 b=jfppn9u6oFyDAfkrXxovy3gtlBv6oeOA8kP07EUDvec9FlZ5nNF14gawi88fjX68Rg
 gLhjfWEvjgN4YK2xhDyzh7uIFUaIzMpJ8lVxdRPZdqKt8wRkkjh+ToRZqvHaVcbSZOtO
 TkBxVEsPLQn+/gJZ9T65KZIN5Ri+Z/h3ZSu/d5Y3ZLCu2YnGHQk3/onyTmXaGwusmcsS
 OBeMOwldqrRO2Flc+cIL4IudQM60BkDsQG/p0lRjUAmwfx8VPx192XGwypuQgYurT40i
 eF4Zjz0KoF1Y7Hp6dc7Bmu7anxXIebWLclj+N4jd97Pwd3SMIZP1BbqAxgnIp39Wgu5T
 gScw==
X-Gm-Message-State: APjAAAUaTQn1CUOqczlU8NrORDS1l1gl/q4d55QKIdxxJe6iETAqI39T
 QWoDo0MaiOkUETlY9fRTCpxuFD3lQUE=
X-Google-Smtp-Source: APXvYqxlfw5ls8N+tAHllqEIbD1Biu0FAIF9AceYfmmdKA8vH2B1fNbq72OdAq+wAG8USEpzKCr3lA==
X-Received: by 2002:a2e:978c:: with SMTP id y12mr13750755lji.167.1582060490722; 
 Tue, 18 Feb 2020 13:14:50 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4291:80f4:9357:4c36:a787:cdd4])
 by smtp.gmail.com with ESMTPSA id z13sm888ljh.21.2020.02.18.13.14.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Feb 2020 13:14:50 -0800 (PST)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v4 0/2] mtd: spi-nor: use spi-mem dirmap API
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
Organization: Cogent Embedded
Message-ID: <bfa77cf7-45b4-ec94-075c-8b675670f04a@cogentembedded.com>
Date: Wed, 19 Feb 2020 00:14:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_131453_750453_598ED82C 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Here's a set of 2 patches against the 'spi-nor/next' branch of the MTD 'linux.git'
repo. We make use of the spi-mem direct mapping API to let advanced controllers
optimize read/write operations when they support direct mapping.

[1/2] mtd: spi-nor: split spi_nor_spimem_xfer_data()
[2/2] mtd: spi-nor: use spi-mem dirmap API

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
