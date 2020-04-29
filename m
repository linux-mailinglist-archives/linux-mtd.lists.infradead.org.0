Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2441BD7EC
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 11:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O3CjcIc82Q4SKlqA53ApxJopCwcWFlrVdxpQC20NITg=; b=PPN/V3enLHcH/dgsIHpNQaKSy
	/daZLPZZqSnAtzGTbzDgRD3oP0RiMaDnnnyI4aciK9qsHxs8DBld1ZCoqRb+Chxkm5XuYRZUQaGwf
	b0FJEXrU56wZRiHzaNy6NU50R08kKf8sHlWAM1uEt9JHxsYIwbfsDUljO9840PGXvnPj5rNVeiEQy
	tIJ9POCmNpHP7BYhRtcQpvF+efme9vb163cvwo73IDSPpI9+kIbv1QawqOpyVMCEtxKIHpSxwrgUo
	QDox1PvWJB+WSPP14DXXhF6MhXv4elgDpazWVHWBvJCRPf0A4TjiPC5wG09E+HOfv+InbYO43Xc00
	ZJVmge7cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTigp-0000vx-TY; Wed, 29 Apr 2020 09:07:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTigg-0000ti-SG
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 09:07:28 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03T8wSHn005185; Wed, 29 Apr 2020 11:07:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=e9NwN/IhCOM3jYLOzfdAEssprCoON8TaVJUaQG+tcnY=;
 b=J+GPW50HYzS2dnXExZqnZ0XHPX4HJhPak2/+H/VoXthCvYrz3BF1nP/uko5izwrQMNrv
 wzs46w4f3d+w94AXcFAmi/Sn0y2zTTLH7HbtwL3gYNS285nPHK/AKxJHNb/NVW3lhXhR
 T2kTZS6oyyPzvOu8DFUZQUhnFsEtEcoyvnDoMDHoOsOmxbjE2gV6PXTvpWMdJA+kAxjP
 hBOCr4gJ9hAiFo5EXXhQnWFVTWLITdlztngvL8b9CnozBWDP18OBf3Rre6DMTfrx/zQv
 KsnOasx7zbGbEwn+21S0q6vY6vbOKZEhyJqVQ9HDfeCaZUpNu0HeQwE4apqCgH3oyzwT 7w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j61dnw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 11:07:13 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3325C10002A;
 Wed, 29 Apr 2020 11:07:09 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1819920749E;
 Wed, 29 Apr 2020 11:07:09 +0200 (CEST)
Received: from [10.211.9.35] (10.75.127.44) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Apr
 2020 11:07:07 +0200
Subject: Re: [PATCH v2 04/12] mtd: rawnand: stm32_fmc2: manage all errors
 cases at probe time
To: Miquel Raynal <miquel.raynal@bootlin.com>, Marek Vasut <marex@denx.de>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-5-git-send-email-christophe.kerello@st.com>
 <20200427194747.224a2402@xps13>
 <40a9bac7-9ed4-b781-f2c2-2d90b4e82749@denx.de>
 <20200427200848.722f4c56@xps13>
 <3527f3b8-225d-6e5a-dd8a-0421d475f70b@denx.de>
 <20200427220806.13741ec0@xps13>
From: Christophe Kerello <christophe.kerello@st.com>
Message-ID: <75a430de-54af-c4db-9d93-6b3d5e65874c@st.com>
Date: Wed, 29 Apr 2020 11:07:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200427220806.13741ec0@xps13>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_03:2020-04-28,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_020727_213533_164FE1B3 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 tony@atomide.com, richard@nod.at, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdcOobCwKCk9uIDQvMjcvMjAgMTA6MDggUE0sIE1pcXVlbCBSYXluYWwgd3JvdGU6Clsu
Li5dCj4+Pj4gYnR3IHdvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gc3BsaXQgdGhlIGZpcnN0IHRocmVl
IHBhdGNoZXMgb2YgdGhpcyBzZXJpZXMKPj4+PiBpbnRvIGEgc2VwYXJhdGUgc2VyaWVzID8gVGhp
cyByYXduYW5kIHBhcnQgc2VlbXMgbW9yZSBsaWtlIGFuIHVucmVsYXRlZAo+Pj4+IGNsZWFudXAu
Cj4+PiBBcyBpdCBzZWVtcyB0aGF0IHRoZSBNRkQgZGlzY3Vzc2lvbiBjYW4gdGFrZSBsb25nZXIs
IHRoZW4gSSB3b3VsZCBzYXkKPj4+IHllcywgYXQgbGVhc3QgZm9yIHRoZSBjbGVhbnVwL21pc2Mg
Y2hhbmdlcyBwYXJ0Lgo+PiBSaWdodAo+PgoKSSB0aGluayB0aGF0IGl0IGlzIGJldHRlciB0byBv
bmx5IGhhdmUgb25lIHNldCBvZiBwYXRjaGVzIGFzIHRoZXJlIGlzIApkaWZmZXJlbnQgbWFpbnRh
aW5lcnMgdGhhdCB3aWxsIHJldmlldyB0aGUgd2hvbGUgc2V0IG9mIHBhdGNoZXMuCkkgZXhwZWN0
IHRvIGJlIGFibGUgdG8gcHJvcG9zZSBhIHYzIG5leHQgd2VlayB0byBhZGQgdGhlIEVCSSBkcml2
ZXIgYW5kIAp0aGUgdXBkYXRlcyBvbiBOQU5EIGRyaXZlciAoYXMgc29tZSBwYXRjaGVzIGFyZSBs
aW5rZWQpCkEgcHJvcG9zYWwgY291bGQgYmUgdG8gcHV0IGFsbCB0aGUgTkFORCBwYXRjaGVzIHRo
YXQgeW91IGhhdmUgc3RhcnRlZCB0byAKcmV2aWV3IGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIHNl
dCBvZiBwYXRjaGVzIChwYXRjaCA0LzUvNi83LzgpLgpZb3Ugd2lsbCBiZSBmcmVlIHRvIGFwcGx5
IHRoZW0gYWZ0ZXIgdGhlIHJldmlldyBhbmQgSSB3aWxsIG9ubHkgcmVzdWJtaXQgCnRoZSBwYXRj
aGVzIHRoYXQgaGF2ZSBub3QgYmVlbiBhcHBsaWVkIGluIHRoZSBuZXh0IHZlcnNpb24uCgpSZWdh
cmRzLApDaHJpc3RvcGhlIEtlcmVsbG8uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
