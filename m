Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7071FCE3D
	for <lists+linux-mtd@lfdr.de>; Wed, 17 Jun 2020 15:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F9wgXwQ6txSAy676zanEx7efhdteu6+Fdc4msh8t4/M=; b=bd9/DTKnCnkxCA
	jKUNhwOagzceg6xStxpNpQFtOiimsGbCudcJgW63i/uYneAkvyTtDjfGsAcbq9J+tzsUhTsNwsK3k
	A2xYi4N6Xa5YO8OLf8c33ciqfwQ4g0/S0DT1T0qcF5o4FAIfAgvgXIH6/s6KnQ2TKvIvvdgewv3Fk
	ndOvXQnEdJcRTBmWtO9V7IMiaRKGhNMb8rCY3PEJ7JDxP6iMHoqQY4NiLGd4laGmg1eZM9OiKCqWA
	KD5Ias9tCE7/SIutgrN1p3vvSS82bGlt5aOILuBI2gg42ur36c6nrVaToA9uAiDsGqcP3qQHK8fWh
	FY7f5mTaXEI8Vt6h4fYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXwZ-000742-3p; Wed, 17 Jun 2020 13:17:31 +0000
Received: from rdns1.delivers-solutions.com ([147.135.99.17])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXwG-0006xU-Kl
 for linux-mtd@lists.infradead.org; Wed, 17 Jun 2020 13:17:13 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@delivers-solutions.com; 
 bh=HfOzYHtXihvNe2PYgpNWZYop7xo=;
 b=aCdPMCM9X235uHWgDoHjKJaeA4pyYBIZTlfAT2LZkPpWb9ip7TPUcqWsFz1k7iQCL0DuVydgLir0
 fnQEf9hj/oDZm9AwHFe0uqGw7hPzFN8uZQHop2l8KNGS/iDKuNHhlZOqKE3Vg1WKF6PK3TJO2tpH
 k2SHoOoiZiYB1ATBDgM=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=k4274rlLt2qY53oforWfAQLYNeUxAcUVaop3CESj2Zdpb48xLajEgpP5bh1dF8UbboosO319nvPP
 V0zfpzTAT0jT3ktlcUzu8y0C6vlcT+f/PgjpXDtDlm3dyDXRqIE6HDffXmGQ0/SmFvguwTx8D4jn
 pkLEZteGWxAFDE95q0E=;
From: info@delivers-solutions.com
To: linux-mtd@lists.infradead.org
Subject: Receipt For Goods Available
Date: 17 Jun 2020 15:17:10 +0200
Message-ID: <20200617151710.C5D562837BF21B5F@delivers-solutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_061712_700347_49890A01 
X-CRM114-Status: UNSURE (   0.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: info@cocyflame.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

Hope this mail finds you well.

Our company have not bought your products before but due to 
excess demand of it here, so we decided to go for it.

I still have other request to make but there all in my 
specification.

Please let me know if you still have stocks available.


Waiting for your reply

 



Warmest Regards,

Angela Wilpert

Sales Executives Dept

HDT Sales & Merkating
vasileos konstantinou 89 Paphos, Paphos, Cyprus
Phone: +357 26 040001


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
