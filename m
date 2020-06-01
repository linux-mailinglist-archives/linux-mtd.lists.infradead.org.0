Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7E51EB1DC
	for <lists+linux-mtd@lfdr.de>; Tue,  2 Jun 2020 00:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsA1Hw7INHEkpsJ3JvJKTYxQNVlZkXrUk6XUirirsl4=; b=nLdZcn8XuVqV+t
	mvDEqdiqudu8A7GlgMj7Xr4wQBR22TVp9f+TObYSACYd1UVZrJ9/0CJvMVWOKd5xGRnh92fe0ckB/
	pil+hYzwUuoPWKnBzcJJ0FMFg8jztC26Oe1UMoJrp6vnKc2dduJMR2qadHnBpC0XWW35a49VjnGZU
	S7N2umBdVQ9OPHjlOzyKUeDpnWIGjhrsGmH9sgX4d9e6eW4sfai5yMqhCJo+zE2AXdal5NKj7SB6M
	iacSug9wsnRPq2KPI9xdgu+L7XBB0aUFlPgmMHlKqsrgxQVKBpjRnjFKzRcjlYqhx0x/fIeIrxUQ+
	1i0Qtn94KhDAQZXZD6MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jftE0-0005Me-OE; Mon, 01 Jun 2020 22:48:08 +0000
Received: from se2g-iad1.servconfig.com ([173.231.248.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jftDu-0005M4-9F; Mon, 01 Jun 2020 22:48:03 +0000
Received: from res241.servconfig.com ([192.145.239.216])
 by se2-iad1.servconfig.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <contato@kasat.com.br>)
 id 1jftDS-000QUs-Rn; Mon, 01 Jun 2020 18:47:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kasat.com.br; s=default; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ed0+A8SOx+hFaIG7Gdu8Y2nWvryKSUPjzq5Oj4cLCgE=; b=RhuuUyICCWDAowyMZ+R25WJVm
 9rGWsOW4jobmc5DUSzrGKfl7qH0BAmnek5xBCyNFPnxUIdmvBntXUjXDHGN5JDrShDbOrs7nr9Yu2
 KviHty44sz8Jms161L7E7mn7z51jW95s4mwIHTeATt/LVFed2ot29i70L51buH9Mw4l+AGjIglGfm
 Q3xnjUpr+1sOPpYynPyHgYqJW8IkHRBAz4sCMq8EIofUHcCM66mC5Ib5O1liW+G6RH3j2sbs3S/f9
 OYWsw2ptOGL7YzyaQRaRURLDWpNwA/S7CA3MQeTyAvpH0NG+kcgtrEtXXRPX7C9zaUz/fJ5xuxmWu
 bSM8kgswA==;
Received: from [::1] (port=45496 helo=res241.servconfig.com)
 by res241.servconfig.com with esmtpa (Exim 4.93)
 (envelope-from <contato@kasat.com.br>)
 id 1jft9g-0046Wx-Qg; Mon, 01 Jun 2020 15:43:40 -0700
MIME-Version: 1.0
Date: Mon, 01 Jun 2020 15:43:40 -0700
From: Douglas McGregor <contato@kasat.com.br>
To: undisclosed-recipients:;
Subject: Did you get my last email?
Message-ID: <980f7470db51d1611127707c520427d7@kasat.com.br>
X-Sender: contato@kasat.com.br
User-Agent: Roundcube Webmail/1.3.8
X-Get-Message-Sender-Via: res241.servconfig.com: authenticated_id:
 contato@kasat.com.br
X-Authenticated-Sender: res241.servconfig.com: contato@kasat.com.br
X-Originating-IP: 192.145.239.216
X-SpamExperts-Domain: res241.servconfig.com
X-SpamExperts-Username: 192.145.239.216
Authentication-Results: servconfig.com; auth=pass
 smtp.auth=192.145.239.216@res241.servconfig.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.80)
X-Recommended-Action: accept
X-Filter-ID: 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
 eygp1ZSTN8OsJpX3TBsE4Vyr5I66j4YlkQ==
X-Report-Abuse-To: spam@se1-lax1.servconfig.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_154802_325202_CE9F3F8D 
X-CRM114-Status: UNSURE (  -2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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



   I have been trying to reach you, is this email still active? I have 
something important to discuss with you. Please get back to me as soon 
as you can.

A. Douglas McGregor

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
