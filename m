Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA891DEC06
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 17:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5/8zh5SVNcgnThbSgutrCSV2hnufFj7G6oyZI+xWNJU=; b=SezndCFDqD6SnyhdQebgnEKMr5
	83CuDV9PkmclyBKpY6k6VYJ0j3HTMmDy7sxuZXHDISMHBCkOKtEvn6UU8L8x/vgNwJKmPZXrRJlkm
	ffcM3CWa8FzdEktGrBUYCmnFtNYbvVyKm3uludy4oZSKpMtOQUnq4HqMmQyO2+gJRivGfKcEc7zBM
	m69rErnjGi/GradPIdN+ynzwnUYNW4wna8CcoFuSzNOOCNqiP4otI3Abyz46/VNvX6Wd3M8fT06sN
	OmTrz1fpqG7B3NIaRV2iqMIZZliO6cwoJLbnsQsTBId/57hiVh9rtikFRaZs5mQPKM29oJVWpPa/v
	ezhakGaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9iS-000646-Ax; Fri, 22 May 2020 15:36:08 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9iG-00063O-9e
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 15:35:57 +0000
Received: by mail-pj1-x102c.google.com with SMTP id a5so5089026pjh.2
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 08:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=4wdCNXtLCBDuaQgxslwagJe+zzLi/KwEIVvOHthZ9FA=;
 b=lMXrNEnZwyFHCTIUYQCX/vQQbMMWXZZ1cgsUTzUbv0uzYASdpjz74Pvn9J2lNeo5qG
 n8lAmMitNLS3XU+Dvm7n5dtGv69ZcTeC3prNug0xuG6ziSY31i71mJd7Ikgx3pUTsmOE
 aDR6v3dcWaM+k1kSNXjFyFxEYOTaZlzHm/FlUjmv8RwxSpm9Z0GxEamdrL5S2TaHnPZV
 2oOHVWQ/IEc7Ah9PnMWAj631PZmWyoJP/B1Ykp3ZDLZiGymHyOtaitrAaJcWjCh3Scrw
 f5xN7OMP9j0DWiFn9znf2g82a+qzz2eS19HTz8NbqQOHj+PdxHsJVCH44w2XIs5R0+pl
 eUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4wdCNXtLCBDuaQgxslwagJe+zzLi/KwEIVvOHthZ9FA=;
 b=twTiKSYdDQxtHRtZYrmY9//o+Ok+iILdt1jtEBKVOEC5BeqbiskoTcf8QQ5+elS4Wo
 49eDkO//01lGvETQI8SBed9P8FBbsalLNsTBzDjtQwoL+VxcAs9D3KoqrScI8cZoQdP2
 OIN1gnwyV13+3E+EVfQA3xsZFW0zJxe2//xya+M+qST/1TsNLjPgpwuW+WnGDpz/1lDc
 Y2ipR4yYx9uoAwyHD/1ffmzCoMj1BliGUUPzg1Sa5mI6AAfCcYH9gePJgMRQQD3IJ/1Y
 Pbf5me1/VWAbyrrb1PO5JcgiathwGhfyKki+Qzt89NfqCbBAP4iNYW4dNGH8JSRCEbn0
 4Yvg==
X-Gm-Message-State: AOAM532JNDUkSa2U8XXgzT8D0/V3CK1HRHOC/EVpynHCgAYWOQ2uDWPj
 oCdbPk6qY+W402IxmmEQAyc=
X-Google-Smtp-Source: ABdhPJw+ak4OzmaMNaX8bIQxwr+3JWDXcjU/+4BS9DgGbPOeh4quf9fS3tuFSWoLUJ5CW0z30QIorg==
X-Received: by 2002:a17:90b:888:: with SMTP id
 bj8mr5154312pjb.148.1590161755506; 
 Fri, 22 May 2020 08:35:55 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t14sm6492463pju.42.2020.05.22.08.35.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:35:54 -0700 (PDT)
Subject: Re: [PATCH v4 3/5] mtd: rawnand: brcmnand: rename page sizes
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20200522072525.3919332-1-noltari@gmail.com>
 <20200522121524.4161539-1-noltari@gmail.com>
 <20200522121524.4161539-4-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <ccfca7bb-a0e7-aa4a-ef3c-a004708e9718@gmail.com>
Date: Fri, 22 May 2020 08:35:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522121524.4161539-4-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083556_331217_98BD5ADA 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102c listed in]
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
IEN1cnJlbnQgcGFnZXMgc2l6ZXMgYXBwbHkgdG8gY29udHJvbGxlcnMgYWZ0ZXIgdjMuNAo+IAo+
IFNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5j
b20+CgpBY2tlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0t
IApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
