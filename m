Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAD912616
	for <lists+linux-mtd@lfdr.de>; Fri,  3 May 2019 03:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DR282WfAPKwiDiyT/BmGxjCOcNZCBMxC9XFqjqwiMlA=; b=XVvSl5dPZ9z3Sw
	ubvwPnH+68CvhEG5vQlLP7QQ5YS6HVGzU/sFhRg/tLvwm5rsJPWBBUEeMnlkCaDjyhNsZIh8WSvVw
	OxFdNwvoloVC9KB5Z1jQHp86f2jgLofPArEl5HgCeB/ZlNf9BZA5YaELRkH3mX6yNJKQSQ44ZNf0r
	o0goN4ZH6PdnLpVgHDWCMKBRu87xYUPTnvmaqskmg8DoVk0XnuUICmXx0L3dko/XKMRn3DgnwWY4J
	BPGhUOUVH4gBN3UG0LdWk5Vd+z0nRdTvPHqN4vSEaqe7A0QyND8fwl+3qjx6os6lM7jDSx2Oi8n3H
	qizv0g+IHV91f1iCPQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMNBH-0000IP-9G; Fri, 03 May 2019 01:40:07 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMNB6-0000Hh-OJ
 for linux-mtd@lists.infradead.org; Fri, 03 May 2019 01:39:58 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x431acuJ136185
 for <linux-mtd@lists.infradead.org>; Thu, 2 May 2019 21:39:54 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2s889demw8-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-mtd@lists.infradead.org>; Thu, 02 May 2019 21:39:54 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-mtd@lists.infradead.org> from <chandan@linux.ibm.com>;
 Fri, 3 May 2019 02:39:52 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 3 May 2019 02:39:49 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x431dmN752625432
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 3 May 2019 01:39:48 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 805664C04A;
 Fri,  3 May 2019 01:39:48 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 405C64C050;
 Fri,  3 May 2019 01:39:47 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.199.55.113])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  3 May 2019 01:39:47 +0000 (GMT)
From: Chandan Rajendra <chandan@linux.ibm.com>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH 03/13] fscrypt: rename fscrypt_do_page_crypto() to
 fscrypt_crypt_block()
Date: Thu, 02 May 2019 21:13:47 +0530
Organization: IBM
In-Reply-To: <20190501224515.43059-4-ebiggers@kernel.org>
References: <20190501224515.43059-1-ebiggers@kernel.org>
 <20190501224515.43059-4-ebiggers@kernel.org>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19050301-0008-0000-0000-000002E2BA70
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050301-0009-0000-0000-0000224F2AA1
Message-Id: <3498805.PsyZfXou4z@localhost.localdomain>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-03_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=699 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905030009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_183956_918428_E8601F8D 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-fsdevel@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thursday, May 2, 2019 4:15:05 AM IST Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> fscrypt_do_page_crypto() only does a single encryption or decryption
> operation, with a single logical block number (single IV).  So it
> actually operates on a filesystem block, not a "page" per se.  To
> reflect this, rename it to fscrypt_crypt_block().
>

Looks good to me,

Reviewed-by: Chandan Rajendra <chandan@linux.ibm.com>

-- 
chandan




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
