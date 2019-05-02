Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229421117C
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 04:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySoQ2sxAabWXi2sRJCjS1f5FSA7Nr88J4if4hv9VW2c=; b=eK8UmvfPzt8TEf
	QU0tE+oLFwstGkTycxFkViQFtZV/zJFwy6Q4XZXlm4qpYvYaK2I2XqIy9NEVUxudf1VWqwSNCG/df
	3n3gWUfYbRoY1RBhL6Lpl/Vjiw4Wq/DxdOusQMPVuTqNRKVZV1MUy4srZ0zgHoQi8lhBBije1+vCa
	q7BtON3ymcbJMkXsHSa09gT0lOn+rFsf4VSexs4w/pnEJGyXeR7+i8Zkgz0ttoTeIclwVYbVnVdya
	+opWbT5AD3BoN3v+P4Y/i3A4U8FPHW1xVdyZtZpF68RXRKT7yYQnbxsnh9C4MDmfhPoq5lZAiWNRO
	eB6geb3RRhqDsZ+6160g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1Tt-0001FK-4D; Thu, 02 May 2019 02:29:53 +0000
Received: from mail-yw1-xc29.google.com ([2607:f8b0:4864:20::c29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1Tl-0001F1-NY
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 02:29:46 +0000
Received: by mail-yw1-xc29.google.com with SMTP id j4so464797ywk.11
 for <linux-mtd@lists.infradead.org>; Wed, 01 May 2019 19:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H1U2mJXBbnkWOnvmjM7JApU8kCjuCk0GAzDiJe0SSQ8=;
 b=HhyNhPER21cKXrmuPmPHmnjvXbBpYYCdGpMAWXbBnuVSKm35ii3+zr47c07qUIxCtE
 kpxIKagdzxPIIgRSrfKgEd7BwxlESTY+lWAn8RzsWw/E5ZP3yQHRL57GtD5cUsViV5Ot
 16t1lQ///dE+3A/FI39hvUZadgfIhWD+VnHI3SP5Ic6H3azruGl+VZUqFPILyyadS6GG
 lbI30N99yOtU5qE+sWz7oKl0fK3kaT7ATJxWt4D+HG+tch1RA93Yegpx2wuD41x0ktMP
 mETEUEtXJHfn0qPrOI6JGR0o9Z0gRRWQzUZryzc1ph6iwNmK8KVCUivX9qKk/5mEwU33
 gdyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H1U2mJXBbnkWOnvmjM7JApU8kCjuCk0GAzDiJe0SSQ8=;
 b=ftA4ex3MfFyL0JwVwV4UhS1q7Tzi/+QEV3/Oe4MIOXp+t3+XVcGyNQLNaQbLxdV9Sr
 LxjJ7ZrhZAmOnPRQS4b3vngF1539FlkvvE6cRCRuPTICXCCLQCNZy94DnjUuQiKVLqcZ
 Ojeu6MHK66YERrn0RPS7//vj1aya9pMxCJ+8lGTJXzNqYCMKsTYBdFw7PMZIK8fnU3p8
 SZ27m3KyMI7ENzXEg4y8gPUy5jQsgfprSLooxxkHe+yt1/kQVtyzS3FOKIfqAaB6ROIw
 rhzU9yyRqeYhvWJ9Si0afIwG4GSmqL1ndjmQ34d/4OJcBAQ1SA1961RqwRbTyBMUQoYD
 kCLQ==
X-Gm-Message-State: APjAAAXIEFddAFoVgP4ByfLUuJM2yMzei5AbQReSTDzWmSwJi5vU/IwV
 e0ffEZHKp0d92qTwhIjR1g3W502m
X-Google-Smtp-Source: APXvYqwiqBdAZ2Op0tTtlyQx/W77Z7fZU/x3DkLyj8DO/TL4D0NenRU2IltJnGLYqvLRkaPf6n34xA==
X-Received: by 2002:a81:9203:: with SMTP id j3mr933715ywg.511.1556764183630;
 Wed, 01 May 2019 19:29:43 -0700 (PDT)
Received: from [10.230.25.168] ([192.19.224.250])
 by smtp.gmail.com with ESMTPSA id h3sm7436807ywb.87.2019.05.01.19.29.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 19:29:42 -0700 (PDT)
Subject: Re: [PATCH v2] mtd: rawnand: brcmnand: fix bch ecc layout for large
 page nand
To: Kamal Dasu <kdasu.kdev@gmail.com>, linux-mtd@lists.infradead.org
References: <1556738544-29857-1-git-send-email-kdasu.kdev@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <baffcda4-84f8-cd5f-8872-a2e2572024ff@gmail.com>
Date: Wed, 1 May 2019 19:29:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556738544-29857-1-git-send-email-kdasu.kdev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_192945_795521_57A881F7 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c29 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 5/1/2019 12:22 PM, Kamal Dasu wrote:
> The oobregion->offset for large page nand parts was wrong, change
> fixes this error in calculation.
> 
> Fixes: ef5eeea6e911 ("mtd: nand: brcm: switch to mtd_ooblayout_ops")
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
