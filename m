Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FECC1F84A1
	for <lists+linux-mtd@lfdr.de>; Sat, 13 Jun 2020 20:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DneKT4Km7thk+vwRke2sZl2ZtRKt6bF6+iwAcsO4IOg=; b=nGeazl1UwJAj6W
	yV5+42sehaFhPX7zAMlqBc7r6bwov0JLfn3l0fVoc6UPD3VInQbTbLHWE2zAyIyOuy9o6JabCEtYu
	aJSW7hh37LUtR5sNJ2ExhoTIhjR/qHvG18GgOnt/bRb4HSVr8OyqzGGk+UzNp1ZoN/D+EHIBx/Z8C
	5DSpFh3FQLTPDHtAFdczpDDBJKlwx1WV9pKA9kGMefDw4Oua5xbV6PNvIXEVFZH4l1NHvwKZCY2/f
	z9bqi9KYZc+x9albIqdIVwMHuMwzOBtzgRjBcQ38nnVZWYp/4r4iRB1o9KTmHiHYGbg40XW+JB0xt
	LLtmAE1uc1jwzcN92zeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkB3Y-0008AH-BQ; Sat, 13 Jun 2020 18:39:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkB3O-00089p-Ij
 for linux-mtd@lists.infradead.org; Sat, 13 Jun 2020 18:38:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id z9so14631221ljh.13
 for <linux-mtd@lists.infradead.org>; Sat, 13 Jun 2020 11:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jUjg4UzFJTjKMYMDonK0uqRDyokwZ83hjUbKbCS6MvM=;
 b=X0bRnhuTFsJNHTZsiWKCe+u5nRA5aUE10yyrcTxIgJz02jC3dNsXPP4T6a6VhQxjDQ
 MMbIh4o5+Y1XPb8TU86SFMkChqjZAoEetfsfy5DMo4tXGNZq3Qzo6JBG2Yd4t7jXr4OK
 wQrObTl7MxeX/TcY+BlMstecIRjPEUeoAUKZ0gGmcFiXl+puGHvLXIKs5NLomj3Q8lWK
 wzzUsx0Dbta9j9Hd010oiDvwlwlXrv1axIW7Lt8u4t9S0y+ISb4RyneJySP2QhT2/mLz
 a+6G69JsMoBUWRjV6S5HirRfIN65Rdelkzwta4smeTV1zcAh4EL6cIeedmBDaK76lh0q
 W7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=jUjg4UzFJTjKMYMDonK0uqRDyokwZ83hjUbKbCS6MvM=;
 b=dkxvI0NgLlSF+NO3JM7hNDiy92q1Y8keB04G9FJYGM+gXi2vC67oILTwf6lpWqfEQx
 +tbYDHV+UNiBaM73RT8VN2F8hBC8Z51w36/CQIPlATrm+ZGhQHxeRhphTRr7I70sSq/+
 l5+aSCcYuOWYsXSdelD9LbQOGzeq5u89tMx3/HcP0vbiDSK8ay0sWlvMxt0heh0OYaS3
 v1L2vshR+JsqOv9KIPPCON5aK5Ic4eB7dHk1X1YOIF5O0XRsNZsKv5MEj1hyt+KKbE+9
 eTjldNXPTcQ4wf4YGUZ8wvGj344ETz9KvPT9ng5U1Gmzg3SyWnVnggr2UbO9bQxj7Tl7
 bygw==
X-Gm-Message-State: AOAM532Qs0L30mLLx4r5ozgNEQb26RSRpMdeYZsmo2IdwaCc2wEz3Wfx
 9uY/SbyOhyKWVM9teBXr5ktyvA==
X-Google-Smtp-Source: ABdhPJwyvGPu0ql9yGhsFhBF9XXSnz0fA7HYx6BhY1QnLtUkukg40cKAA8XhqJCFBysgfbjFvdWsjA==
X-Received: by 2002:a2e:7e0c:: with SMTP id z12mr4866946ljc.146.1592073530692; 
 Sat, 13 Jun 2020 11:38:50 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:2e2:84d1:c335:1451:e577:e115])
 by smtp.gmail.com with ESMTPSA id z13sm3225288lfd.7.2020.06.13.11.38.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Jun 2020 11:38:50 -0700 (PDT)
Subject: Re: [PATCH v3 0/2] Add Renesas RPC-IF support
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <721e5306-6dc5-4a3a-2bbb-459be6261357@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <ef5b6f3d-bf7c-b36c-5b6a-c202267a2087@cogentembedded.com>
Date: Sat, 13 Jun 2020 21:38:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <721e5306-6dc5-4a3a-2bbb-459be6261357@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_113854_611266_F95623E1 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, linux-mtd@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Mason Yang <masonccyang@mxic.com.tw>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Should read v4, not v3 in the subject. Sigh...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
