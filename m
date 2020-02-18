Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3418716349C
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 22:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LsZVoe6ex9kRd5hz+xsx2Kpg7PBAhUAABVPlyoZpz0Q=; b=gC9SvXwOL6Xgwg
	bBVs+GgHxyCm2jRGJahjoiCpITMUSv8KNXx9/LjrbZRuakF72UFBP/mMhwtbU3SKusDuJ0DSvmUnk
	0CZ6VdFW2ggCoufER9uupCWUsNX9yZacZILuzflEodhDJSoKWo4KX7VNH5LFHGBWMqpsCDGy8gZjO
	rWKxpDCFQ9Zr4ncK1UgayNbjkr9HnxtTp6+fpuEw818e+7n/yxkjrqpquA0wHzJ12Y344+xa+ZcyF
	Bkx3i+c+wfPVXFNK6EEe2/D+YgsGSBKToXYaXPsuH0NW+99KZUH5D9YNzxQWCuJ/rZGB4ghRTlDZ+
	Ex/lOnRuiywVv+lpicvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AEf-0002DO-KY; Tue, 18 Feb 2020 21:16:53 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AEU-0002Ct-QI
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 21:16:44 +0000
Received: by mail-lj1-x231.google.com with SMTP id d10so24665631ljl.9
 for <linux-mtd@lists.infradead.org>; Tue, 18 Feb 2020 13:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=SVVjPpftEnezg71EKcPY5Dj+7WunWgEQHjc/BUcOKis=;
 b=MLkj/sp79KrtroLDV+7F+To0gApFiijj3iwQHDm4msCWOOIAWmz7GURdEKpB2nY6/2
 9RJ+faM8C6NCcNVhlQ/686T6o5XfG8eLjVm2lAsIwvnfy5w9wGCH2iqXxIwmKl15MjHY
 oQDs5m+fEWNdXO2CvG3j2/EUsW1mc9Vxe6ob4K8sPYlGKALs8hTMWNMI3rznyT0qccu0
 bQhEENxc1qle8EoKUpzvg+wt/u0eSRl2pe1A4hRGXraKyToLgKbm4EjqvAN9VAfbGvZo
 rR7z1BwX9QVLBBPxkXCzOslflxjTM4gwU7ioI4x6NijU6kSlh63frodESRZFCxKGi4h/
 c4Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=SVVjPpftEnezg71EKcPY5Dj+7WunWgEQHjc/BUcOKis=;
 b=jCyCvtYPxpOFfiGlGO+Z+B61hap7U5kfMAq6TQULTZXgTXcYNvxsd2DguNaMa94FQC
 M/AkgqSlDfjAavvJiOqCObYDUXnLJJZRLADQGDXMIwL3zUQ7rbHaX+0oVEdAS7bsOjqk
 CR2sih9RcRVc7PSk+x5kNFUm1k1bFe/JdFSaWhPODRdkK3uZyGbrYjPOD88zQZC48wlw
 8nrURYdSj95mYkAP0tjxUEMJkCpuZ5QWqN4u4RUouYmuIyhg6hq/o5+HipmvNT7KKF0o
 eJ5rhEtRB8jMXU7K9A6ApqIUQupCXbySkQV/pZ1joC3Jqc0/a8Pzk98KhTJqUO9lwXSs
 jx+w==
X-Gm-Message-State: APjAAAWxuOR2m/NcvddV3sVHJP7Q/QuDCtDiT/ZpAvdxqeJMT6oDWcLd
 pTla7K3UViMuuV5CwRZdNITrz4tWZ1Q=
X-Google-Smtp-Source: APXvYqyIvEhDpYA5DvhA8n5UG0MwQOcdQJxovblKco882o6ilHfBAd0KvpvD4ZXXolMrwpgFgPBUDw==
X-Received: by 2002:a05:651c:149:: with SMTP id
 c9mr14158875ljd.80.1582060600762; 
 Tue, 18 Feb 2020 13:16:40 -0800 (PST)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:4291:80f4:9357:4c36:a787:cdd4])
 by smtp.gmail.com with ESMTPSA id d22sm2809210lfi.49.2020.02.18.13.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Feb 2020 13:16:39 -0800 (PST)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v5 0/2] mtd: spi-nor: use spi-mem dirmap API
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org
Organization: Cogent Embedded
Message-ID: <707c02a5-fc7b-851e-6f62-6e295d2fb40a@cogentembedded.com>
Date: Wed, 19 Feb 2020 00:16:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_131642_857824_CDD927CB 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
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

The previously posted cover letter had "v4" in the subject, but we're at 'v5',
so reposting...

[1/2] mtd: spi-nor: split spi_nor_spimem_xfer_data()
[2/2] mtd: spi-nor: use spi-mem dirmap API

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
