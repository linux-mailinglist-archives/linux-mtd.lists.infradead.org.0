Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F831B5357
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 18:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkwetIOKhuf5k0Cz7bTy+EhrnXpjIB0TW1eunkf/9/E=; b=cxJi2rFtjNaoFa
	Nhvip+W4+zDeosFOBuT/LATdAFidrSsUoQaVIMnP7SIJU83u6Bod5i8z4tMvcM/uf22IHLyfp4125
	ScSnya+tXPgHO1qhmWvOxOZWQlaPa/tu/dkcNg/SwA/fyYwd3YA/2bDHHlxOk5jQMt/j2z6j56vm0
	NeLEyxWOHEpH+xWRXa+RuS4bLBIOPt4oSK3HpdhiMG07dJkolp1eB/OvxcjW445jbXBEvshyPbJBf
	KvpZeb7+L/sALt7gfUT5AgMhu5IBxB28YsFpX0IHyPwJnqiI5NKlmwmpPpplruoFvkdM/GJ6PHqEM
	jOm01WJAlB38qyit7mLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGej-0005m3-QA; Tue, 17 Sep 2019 16:48:45 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGea-0005ld-Bw
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 16:48:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id h7so3908989wrw.8
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 09:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j7J5qPUasUNcH6XCLae9DrqrKRU+KBZxCXLETxALrzU=;
 b=tSP4SxcWx1l7rPU175iiC66zR+LXJa+Tryj0iqaRHPZKWZUbetSC4A6aF3jyhYMuA5
 mkkXuT7+SsS5rd1b9GEE6fWRTjS7+tggK8p+FpC/xduvQFEMsXKMB+alo2P1FljGWQ/Y
 ZuJUBW5bHCTej9TFXIW1QcyBSgHg1Abu78lT3IRBuZTtmkgq2x6ueySyLUNkkG/PX55V
 Rhrn91N83cks0niMDpuiT4QzXvfqNovHQ9rjpdYrf0lhMZ9oXxbwLPPvoDQLmNeXlbUX
 SKrP5KjBJbcpS+LpyJjRGOW2cX4YZ4OPp78XSHnAuTCrZrPf2Wk5hhDOYDgZZ/M/HIEL
 7ULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j7J5qPUasUNcH6XCLae9DrqrKRU+KBZxCXLETxALrzU=;
 b=D7SQwcg5kHVfbCh61oSuPCUdmc9Wp+QQyQC35TzuAPX1fn45cRVPu4tstCH/VZyOJM
 Btf9TsNWwPFU4E+o4V0OHaxWIh7k4XQYJeJUCrN026pKC6KZlufs3MnMn9jQl/PnQ+kE
 ijNwbggMrgPEpU+4ufwywDKIHQVIgiMpDX2Ion4af2f2JMWn9qs+GCUbm2tiAP13zcv7
 NlUFl+OjQ5k5AQOspHXPF9AbYvPCJILGR61VPmP55P2s9R1U3+SrEOfddnEvQZfxq+3F
 jDCIliZcQi8N0L5fUJTzbmgWSkb0l3yoyvpmzVBgE01Wfes9DI9efpVziObf397PtDQL
 hXiA==
X-Gm-Message-State: APjAAAVetyKcieUE+wiyM2w6+XkYPd4zzOOxG3Cf6gKfcndDWCLDqvl6
 YnEPDDU5+XocOOVBMGbQH6c=
X-Google-Smtp-Source: APXvYqwjW/mPpkrTHzcpCFmjlng8PNEFEnagw8fMbwFglvJKmnX4UGAqOz07K2eAJGaCoKpwlcvv4g==
X-Received: by 2002:adf:eccd:: with SMTP id s13mr3845066wro.288.1568738914545; 
 Tue, 17 Sep 2019 09:48:34 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id
 u8sm3578179wmj.3.2019.09.17.09.48.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 09:48:33 -0700 (PDT)
Subject: Re: [PATCH] mtd: Remove myself from MAINTAINERS
To: linux-mtd@lists.infradead.org
References: <20190917160432.6602-1-marek.vasut@gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <e5a5d49a-08f4-9947-c686-d9359b73f203@gmail.com>
Date: Tue, 17 Sep 2019 18:48:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917160432.6602-1-marek.vasut@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_094836_410708_533274A4 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 9/17/19 6:04 PM, Marek Vasut wrote:
> I was not active for a very long time, remove myself from the maintainers file.

To give some more context as to why, I recently came across [1] again
during am internal discussion about GPL compliance. Harald suggests that

"
It matters who has which title and when. Should somebody not be an
active maintainer, make sure he's not listed as such.
"

So the question is, should I stick around by title only or not ?

[1] http://laforge.gnumonks.org/blog/20180307-mchardy-gpl/

-- 
Best regards,
Marek Vasut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
