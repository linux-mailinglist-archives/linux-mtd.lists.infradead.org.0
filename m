Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F361DEBF9
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 17:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Qe8s3cUfzFfT50CPIPI1+zXAgtrfyp9qPuY9sh2iGg=; b=NWIQzzfCKGiYfMrK+aP1pZh7zT
	k/BioBGgiUOpBJN3sKkkHXBvIc+df0RnR0cVkUsFFegZEg8cbUtLyEIWmqNAS5BuH8Q8Syhsq5mZN
	2m+/rueghgpMcJtuS/5bRWX78UsiKEB7IBod0FP+ODZ0doBUKAk4NzSLBzdyXLOjY1PqHN59O91Ab
	oewZmM/rIsSW9oIr5PVMQiA0BiHrLDSaZWikOppeJJ2hFBfH0y+vXbKvuAamYM1DeKypaMaTA0BK5
	lFB0ZsTxoetr1UEaU1pJaLwiSuMhHwmjBQHs5xXL8HPTMQ7bxwO9onYjvDz3/yL4Rvu47mUuE2SoC
	q8zpfpHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9hk-0005nk-Cs; Fri, 22 May 2020 15:35:24 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9hZ-0005nN-Sr
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 15:35:15 +0000
Received: by mail-pj1-x1042.google.com with SMTP id n15so5128602pjt.4
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 08:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RCkeT00nFyzOKJ0+m+uJ8VynyJ/HzcwB7W5G+s1+HFQ=;
 b=ZyEjGjfVAGpMkGbpvjctw5r6a+y42f6pLVMkAR72nfmVYJWKuLh9Z9LOMiH8gnDaL6
 vfE3cs/dkHcHuHUL7HhadRpLiMHYAz6xRAZVohzb46Wq+PQZICAHpROFPW9MedDUYlqe
 DoDszFn5FVXfwcy0P60SvL3sVk61wulHHvdQ87w02n7mMLbGp8A4P9jRO0LYggtJ5OHN
 mfyGrRdc0IgkDTNjQBk2tZyXon/78PsAAYmpkCxfVpRxUkAAixffymW9Lp+ukAt6J9ny
 HxX+MnhgpXk2o1cN3IJTdbKxof8S7FqiQtKs6sThQVgSfvNM0lZ92FsI6ztavkl3Oz98
 n/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RCkeT00nFyzOKJ0+m+uJ8VynyJ/HzcwB7W5G+s1+HFQ=;
 b=K85kimiDQ6jZLoMy/CumRE9VBO+qdWppN9BwGQpbJYQ7bPnjj++vr86DB0EQ8o3fVC
 +L9QkdLDTTFAJ162vW0VPntyqoVxSRJ67dfMp5eSxJvGsAAjV7akXyY2A7Zra69mOOQA
 LGZpUT9SdW8l4GlK1/LFhxdGyBSbhwB+6U5kor0ff9i4OTNwmI/RAxQhtSPkbNRtWapr
 A1JRcc1QQke9hLUdoRQyr7I93w9+Y3P99P/wAvMRPvMWl02R5BgtGYSoSvV7MtzAjs02
 Upi6pY9fG9KUYM46EzMJEbB1UIN8Iow3CyQViLgWBkqw3yqYIt4NqJP5gCabNzVn80wY
 qVZw==
X-Gm-Message-State: AOAM530p++1MDOIt9N+pNcUxtyVBIvKNYcrFEwXLPrCM3fy8R1hO2ZQ7
 VQCrHXVR8hMzFH9Xhx59BoY=
X-Google-Smtp-Source: ABdhPJyVE7XYQOeWFksysNTqtqAThQuG7jrq6k2DORMDvAlzLJ9FncCFOTiP2lUa+Gfqd6KeUeL6aQ==
X-Received: by 2002:a17:902:868d:: with SMTP id
 g13mr14962098plo.246.1590161712982; 
 Fri, 22 May 2020 08:35:12 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g27sm7545812pfr.51.2020.05.22.08.35.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:35:12 -0700 (PDT)
Subject: Re: [PATCH v4 2/5] mtd: rawnand: brcmnand: fix CS0 layout
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20200522072525.3919332-1-noltari@gmail.com>
 <20200522121524.4161539-1-noltari@gmail.com>
 <20200522121524.4161539-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <346c2834-3ed6-4813-7f32-d2dc8bbc4885@gmail.com>
Date: Fri, 22 May 2020 08:35:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522121524.4161539-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083513_932678_DDF5DD29 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
IE9ubHkgdjMuMy12NS4wIGhhdmUgYSBkaWZmZXJlbnQgQ1MwIGxheW91dC4KPiBDb250cm9sbGVy
cyBiZWZvcmUgdjMuMyB1c2UgdGhlIHNhbWUgbGF5b3V0IGZvciBldmVyeSBDUy4KPiAKPiBGaXhl
czogMjdjNWIxN2NkMWIxICgibXRkOiBuYW5kOiBhZGQgTkFORCBkcml2ZXIgImxpYnJhcnkiIGZv
ciBCcm9hZGNvbSBTVEIgTkFORCBjb250cm9sbGVyIikKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJv
IEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgoKQWNrZWQtYnk6IEZsb3JpYW4g
RmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgotLSAKRmxvcmlhbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
