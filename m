Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCAF1DEC16
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 17:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y3hgvObTY6pRMDfEDlH6STqilJtE2KiN9SarLeCFiVg=; b=qp5IszvrUaFwq5FjW0uWi8vJCT
	czhHGSze3wj7FsDRNvpY9Ka3cXUra/mIL2qQrMZOpTqGKF+/aQMGdbvDVoKqQ59NOKv7DeNY5W6zt
	sl48QCWXb+/xbS/dJY4K2L9bXPfrosWZRqqSa4Or2WfR4z9HQFsZ6rl+phYrqgEcNfBTrqphfa/Ba
	ytZTsVWyG61nf2olNFmg01WCX152Og0pttYD0RNj2c3lSzbujk5MfTRNqmacMGHCYpV1NdTWheGmM
	iKUEz9bQ8WfEhzmtwS/WLABzv3PuTB7ooub5j6zEusc4yCOyLMo2tDzmsQeoScxeg5TIJpONbilMl
	XmmMrfVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9jV-0006pf-KM; Fri, 22 May 2020 15:37:13 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9id-0006Mc-KQ
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 15:36:20 +0000
Received: by mail-pf1-x433.google.com with SMTP id y198so5364902pfb.4
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 08:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=lnZ2WUm5gsoHVGLrikaUs+9dOq4WzhfyiayZ5tcorxY=;
 b=QmiQilkrdsdW7escgA0eMPFnT4ESnOYHA3VvFSSsblONz8F3ljC5oJSjHRSN/Hk5Lz
 H+NK796zZH2R+HfLsSD+MZeu6Gndlde05bXvqHNHRYDgDvNwlvcxRe6Vv546gUbJru4Y
 Qc8RmxHxg5AbG2YJ+J2oof+brW9Bca6apzHVVxT5k/g+L4xXaDcMu815ZiePspVMkHbV
 TxFwE1cPBAUfsch9aGjwBiSomzCTwZGRQutpUyXE97tog3VabZEynqYltU7VA6uWdPnQ
 fQNLnx04gGbYnxS38RsDVol8zMAvtCedd1sKCPuIaZfhSTozJe7mbANv6ObPH6409u/J
 AKEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lnZ2WUm5gsoHVGLrikaUs+9dOq4WzhfyiayZ5tcorxY=;
 b=UQ1KHDgko8ENSyaP/JyAjNhMld/71ejBAX/DQyys7fQuZUXtKioF+gMfgcw0mkviYP
 oIHOAFULpW+xKyrcqyJsFAQf6vl/K7nG/xd+g6TzPmeGS0ECjJZK9G3lCWhxLfKAHhfC
 cRmC7c7MD11YM4h8yGgB2BCdm+FqwzzbN17P4irJ3mLCG7H+tBXirX3tY+M9f/hBmfqP
 dI/am+71eCebU58Y24y08+dsms1f9DYhtKQc88bX51oIODgmRfEbOCAUCyA8TiDiVMAW
 /dbOjdn03ImiGpIqzkyHC7ot5SNV1G2KzWpraEM2TZPKt58LYxqiF9ycIWIsNJdDuI3U
 nEpg==
X-Gm-Message-State: AOAM531g0zTHzjnGdyyj5U2JJCKsvKcTBr1E3+LKXJUgJXz35MnUOA+m
 v8ddEme6vCifAYYtmFEUri3+18iW
X-Google-Smtp-Source: ABdhPJxCwZDXgvMJcaOXUWcZ2PD97knGPGulsi1s9hQZScdEGIe+g4LIaYmUPWF2UsEdb50ExqvRQA==
X-Received: by 2002:a63:794a:: with SMTP id u71mr13725179pgc.89.1590161778568; 
 Fri, 22 May 2020 08:36:18 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o25sm6395243pgn.84.2020.05.22.08.36.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:36:17 -0700 (PDT)
Subject: Re: [PATCH v4 4/5] dt: bindings: brcmnand: add v2.1 and v2.2 support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20200522072525.3919332-1-noltari@gmail.com>
 <20200522121524.4161539-1-noltari@gmail.com>
 <20200522121524.4161539-5-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <742a0b02-6958-608e-1e8e-6da2dbedb2f8@gmail.com>
Date: Fri, 22 May 2020 08:36:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522121524.4161539-5-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083619_681426_CD44E82D 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

CgpPbiA1LzIyLzIwMjAgNToxNSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEFkZGVkIGJyY20sYnJjbW5hbmQtdjIuMSBhbmQgYnJjbSxicmNtbmFuZC12Mi4yIGFzIHBvc3Np
YmxlIGNvbXBhdGlibGUKPiBzdHJpbmdzIHRvIHN1cHBvcnQgYnJjbW5hbmQgY29udHJvbGxlcnMg
djIuMSBhbmQgdjIuMi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9q
YXMgPG5vbHRhcmlAZ21haWwuY29tPgoKQWNrZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFp
bmVsbGlAZ21haWwuY29tPgotLQpGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
