Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9226E5FEE7
	for <lists+linux-mtd@lfdr.de>; Fri,  5 Jul 2019 01:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2IrfjjlzjlihRFy5bDXL0NUSmFHTh+ixruCtxUOYSRw=; b=AAzYA3Fp/HUtUy
	Ae2bXAqylYPKZDyat25PUnQknnyqgTU+npaDS6IYZhscf+TPsYofXPZtkRjHy2IEWn9IdIzUHt4bD
	7qR14YP37GQKCfQKBEaHirmofk3MXUw9Xus/7/sf+kAHDY88U28YKoaf6h2mhdD6jctQmwfLxxxDf
	5CUjtiPPhTDizUxDAKudVjRuC6BpY28VLEEiM2LJVk21b1bVldy9Hcf6/I0VTRM0IOArsVmAet8Uc
	H03Cy8Bvmmw3/gT3d1O1gXWgRau2S2lVW0/24bi5mg7n1OzzAVinrJHaKDk1HNgtXyrauOVD8zcCP
	+PWcbed8o8hlD53zJATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjBcq-0003n8-VX; Thu, 04 Jul 2019 23:58:53 +0000
Received: from mail.mci-mobile.com ([182.253.21.109]
 helo=mail.indonesiantower.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjBcc-0003lM-Jx
 for linux-mtd@lists.infradead.org; Thu, 04 Jul 2019 23:58:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.indonesiantower.com (Postfix) with ESMTP id 656253C8012B
 for <linux-mtd@lists.infradead.org>; Fri,  5 Jul 2019 06:49:01 +0700 (WIB)
Received: from mail.indonesiantower.com ([127.0.0.1])
 by localhost (mail.indonesiantower.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id pDyPT1VQX42a for <linux-mtd@lists.infradead.org>;
 Fri,  5 Jul 2019 06:49:01 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mail.indonesiantower.com (Postfix) with ESMTP id 3C2833C8012A
 for <linux-mtd@lists.infradead.org>; Fri,  5 Jul 2019 06:49:01 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.indonesiantower.com 3C2833C8012A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tower-bersama.com;
 s=selector; t=1562284141;
 bh=CiEKPmjDm3GMEBnI7r+BThJdvI8sNgbgJtDwZ8XLZH8=;
 h=From:Date:Message-ID:To;
 b=21PE+cJoqo9l0nqslQkUnnB2EgpJSngAtSrTAi2ESQ9CkZtH3okj6cQxdYYA/08Sq
 XjC7E90CrP4cU3tT76nnQRFn7qrWxOIPlLOgPeXpz0WOG8Rrap6xBBIWzLIcbt/gsV
 7fbv8NI9iggK2aKcM/eVwIDB7LJ3fW+2urNFaYz1QHcQVLkZiVxb2Q8cQeTGLT1wne
 ixsuf9ct/eQtYlswR6eIPO3CCEOUTzZR948Gz/jHmnDXBp/bYplscR/yPadYhGgNmz
 KUicVLzPz5OWLEB3gNarj4fYgzfatsURpWv9qSR6BnyNN5HvhtaxJR8czUfwueVW6K
 QqlnUh7kIWcsw==
X-Virus-Scanned: amavisd-new at indonesiantower.com
Received: from mail.indonesiantower.com ([127.0.0.1])
 by localhost (mail.indonesiantower.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lj9R7ODnNL_a for <linux-mtd@lists.infradead.org>;
 Fri,  5 Jul 2019 06:49:01 +0700 (WIB)
Received: from [127.0.0.1] (unknown [177.8.250.82])
 by mail.indonesiantower.com (Postfix) with ESMTPSA id 14DED3C80128
 for <linux-mtd@lists.infradead.org>; Fri,  5 Jul 2019 06:48:58 +0700 (WIB)
From: ronald-a.haryanto@tower-bersama.com
Date: Fri, 5 Jul 2019 02:47:08 +0300
Message-ID: <838976C3-8275-9DDC-7AD2-22285EBF2410@tower-bersama.com>
Subject: Caution! Hacker attack on your account!
To: linux-mtd@lists.infradead.org
X-OrganizationHeadersPreserved: QIKXZF.tower-bersama.com
X-Mailgun-Tag: [mailing_type=lwa][sender=ql-xmlback][hhid=26135470]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_165838_837913_61A69B77 
X-CRM114-Status: UNSURE (   1.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 3.0 BITCOIN_DEADLINE       BitCoin with a deadline
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

I am a hacker who has access to your operating system.
I also have full access to your account.

I've been watching you for a few months now.
The fact is that you were infected with malware through an adult site that you visited.

If you are not familiar with this, I will explain.
Trojan Virus gives me full access and control over a computer or other device.
This means that I can see everything on your screen, turn on the camera and microphone, but you do not know about it.

I also have access to all your contacts and all your correspondence.

Why your antivirus did not detect malware?
Answer: My malware uses the driver, I update its signatures every 4 hours so that your antivirus is silent.

I made a video showing how you satisfy yourself in the left half of the screen, and in the right half you see the video that you watched.
With one click of the mouse, I can send this video to all your emails and contacts on social networks.
I can also post access to all your e-mail correspondence and messengers that you use.

If you want to prevent this,
transfer the amount of $500 to my bitcoin address (if you do not know how to do this, write to Google: "Buy Bitcoin").

My bitcoin address (BTC Wallet) is:  3LCfL9mNHA5NCubRcPLkpfTzzqB5Gxzrg3

After receiving the payment, I will delete the video and you will never hear me again.
I give you 50 hours (more than 2 days) to pay.
I have a notice reading this letter, and the timer will work when you see this letter.

Filing a complaint somewhere does not make sense because this email cannot be tracked like my bitcoin address.
I do not make any mistakes.

If I find that you have shared this message with someone else, the video will be immediately distributed.

Best regards!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
