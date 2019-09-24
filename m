Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A00BC244
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Sep 2019 09:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxzwm6/yBkxvxzOsg8RoRmmrX0eXTj1djVwh9FWjU64=; b=cECBbCrk0uy5en
	ek+kQT8q6hEML96VMYV2UGkkgXYRyozoMQ5NEQP0lTkCwRzoXl2EiYAEn9y/TOnj2fj5GkAMy+bDy
	zwyR3lMc6OU+0ENR/Akx9MXnDXYvF8QdIRuJNyEHcPzd+ReK+RdsSDC2OMUCmn9gTUTo2/1sD5Lud
	TKr9zMjDhFDZedNaadgFEbjQyZtb+MLmRYZAX+En5ClANueBSPw8VH6AMu4Om/EAJZkRYr2KKkXto
	3yqy/zShtP8cmF5u2mtl4RfnT1QcldfZITEUSWGA0GWtS8llPQqM7z0gFAwia6kYYYBamjf3b7Lmt
	4UTqt05cDpIA/5SS0lrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCevK-0003PX-DI; Tue, 24 Sep 2019 07:07:46 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCetr-0003FK-1X
 for linux-mtd@lists.infradead.org; Tue, 24 Sep 2019 07:06:36 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 443E2946CEFDD28300EC;
 Tue, 24 Sep 2019 15:05:55 +0800 (CST)
Received: from SZXY1Y004550421.china.huawei.com (10.61.99.243) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 15:05:46 +0800
From: Huaijie Yi <yihuaijie@huawei.com>
To: <f.fainelli@gmail.com>
Subject: RE: Re: [PATCH] mtd: fix oops when writing to phram device on arm64
Date: Tue, 24 Sep 2019 07:05:13 +0000
Message-ID: <1569308713-4376-1-git-send-email-yihuaijie@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <3b1e2913-fd88-4c60-3889-313512e365c5@gmail.com>
References: <3b1e2913-fd88-4c60-3889-313512e365c5@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.61.99.243]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_000619_360642_823F4340 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: richard.weinberger@gmail.com, yihuaijie@huawei.com, joern@lazybastard.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

PHRAM does't use Device Tree property, so I'm going to use a boolean module param to achieve it.

--
Thanks,
//Huaijie Yi


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
