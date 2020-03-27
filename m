Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC2D19581C
	for <lists+linux-mtd@lfdr.de>; Fri, 27 Mar 2020 14:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K9mAIB18RD+ZrsEa2HWMqqcysO/aviC7IXe5j8hl3qI=; b=HYWmSn5hsK3Fkv
	xNUPBKy2MAUoZEuMiYw1gUyubSf5a96ljWjS+AqWbFuhNaIYBU3u67BHIbt1rhPjxpzFSwj3Gtg48
	wmX9JPUAWzyVykCB+iRiqHDdMFoPlTjg4SUHSMLMl271Hpk2QMfRZ4JrnOUyoinZrOPZla3ZhnB0g
	r/D0nwtJw/iwpqE2ReTAkBdgpB5mbJ25HFGKJoustqYu9t2CLdUu0RNarujWwLVxBQVvLps6tQzkI
	2YQBvnlUeZPAw7Vy4p36vz6Xz8K9G9yYMuB72X/GdSQdJeb8/ltiseJErCrORUO9c4it12yu3oeHk
	4mK9OetizboImhom9a3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHp97-0005Hf-5s; Fri, 27 Mar 2020 13:35:37 +0000
Received: from mxa2.seznam.cz ([2a02:598:2::90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHp91-0005Gh-4v
 for linux-mtd@lists.infradead.org; Fri, 27 Mar 2020 13:35:33 +0000
Received: from email.seznam.cz
 by email-smtpc21b.ng.seznam.cz (email-smtpc21b.ng.seznam.cz [10.23.18.27])
 id 4574902fc593fab24700ae41; Fri, 27 Mar 2020 14:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=email.cz; s=beta;
 t=1585316124; bh=EsG0O6a0o5uQtLILAzf+BoQIJ+R+xhCc62OofFmrjpI=;
 h=Received:To:From:Subject:Message-ID:Date:User-Agent:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-Language;
 b=X4IR9oIBrm4x9ASL0xq93wCLnAivrRtWDIUXrao+fo/om9UlVvl59+1SRVkW+hXTX
 8RuTrI9YDEjGugp5f5PLURcpuXopy9sQErDC61ljBM0YUzljUlhdsHSCb8exRIDU/d
 UOgtpJtzq+pRle2q+giEpMy4pVqVx6pS437wrGso=
Received: from [192.168.0.140] (havhav.seb.rev-fortech.cz [213.250.223.2])
 by email-relay14.ng.seznam.cz (Seznam SMTPD 1.3.108) with ESMTP;
 Fri, 27 Mar 2020 14:35:22 +0100 (CET)  
To: linux-mtd@lists.infradead.org
From: Jan Havran <havran.jan@email.cz>
Subject: jffs2reader: catfile writes only the first inode
Message-ID: <9fef7d91-ff84-3a3b-2b26-06e514f54a63@email.cz>
Date: Fri, 27 Mar 2020 14:38:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_063531_495019_7B1B50EA 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:598:2:0:0:0:0:90 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [havran.jan[at]email.cz]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

during my work with mtd-utils I found out that dumping the file from 
JFFS2 dump via jffs2reader is not fully implemented - it dumps only the 
content of the first inode. I found thread here, in the mailing list, 
about it [1], where the guy refers to one fork at github which has this 
feature implemented [2]. What do you think, could it be merged in 
upstream or does it need more work (I might give it some time to work on 
it)?

[1] https://lists.infradead.org/pipermail/linux-mtd/2015-June/059804.html
[2] 
https://github.com/vamanea/mtd-utils/commit/967e4065c887f410bd9be76306f382664221ce30


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
