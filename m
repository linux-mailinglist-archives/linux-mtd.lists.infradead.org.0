Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAC9E643C
	for <lists+linux-mtd@lfdr.de>; Sun, 27 Oct 2019 17:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xk+b5SZ6T9smV4QdBIBEy09EMUT+rB79KGm8RwmiwXg=; b=G3ZAeTm8wHrDSfzdL/slmBk43Y
	WooAA9qQp6PatkDYzZmw/a4vD7LhFVy/UkXazP57DMNgLCwxSYYx3rWICZp5D4K+67/Q92pqKxziB
	8a26Gfs16SHuLi6HJMfhoJflV5AwLaiRG0RHJ9A/pd0qgU3Nw807IudIs26SHW400p3gQ+y8q+etz
	qESZHqgwL4q/KDzc3uU03F37XeBmK6wpUof+LCKKG+P6qozrigRx2+++a91yI8s7Dyosdm0h0Timj
	yswcL4xHgyFyD1oL/0rbKIiJ1utC4kQrNB8EDv2hflvmxKgK28D8g9cbY55rBqZtjBRUkdLhy3c/C
	+RrQNSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlND-0004Gg-UH; Sun, 27 Oct 2019 16:26:35 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlN0-0004GL-Lw
 for linux-mtd@lists.infradead.org; Sun, 27 Oct 2019 16:26:24 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9RGOPjp151388
 for <linux-mtd@lists.infradead.org>; Sun, 27 Oct 2019 16:26:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : from : subject :
 cc : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=l+MRxXsB6nTNhvrdtceIkJznj86BmWcAceeaKlTZ2eQ=;
 b=UJ7XioZlc8LFEzBANNAmEWTYlYsjMH3iuJWSiNgwDjIUhd4+6piKkOI6+qCnnmysdOLX
 EUe2mRM5M6lEV/hlSYReuD2/ijVHaR4ufpLNitkc4LtwGFzcBo4Im7oSl2RNOe28crhf
 eZGQ8q8LefylDBM0K7eyMtfxpVXjgk1d8q1Y7xPIP6Vdt27vEu96oZw/PAnWxMJBLibb
 4fRfjIy/rkxNfBHo1zYtAjxnjcLJQf9d7y43S6YBEFgCEScYp4Rz81GVkmj/1ADOLCP0
 dUZ6GDfoO8MGde3gnrUx4sLCg/ydLolyhO0e5TwajDfpNQcOEzKQ6QseCC1/CTeDd8mL SQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vvumf2svs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-mtd@lists.infradead.org>; Sun, 27 Oct 2019 16:26:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9RGNPd8042631
 for <linux-mtd@lists.infradead.org>; Sun, 27 Oct 2019 16:26:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vwakwgymk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-mtd@lists.infradead.org>; Sun, 27 Oct 2019 16:26:18 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9RGQHfo015205
 for <linux-mtd@lists.infradead.org>; Sun, 27 Oct 2019 16:26:17 GMT
Received: from chromebox.third-harmonic.com (/10.154.108.227)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 27 Oct 2019 09:26:12 -0700
To: linux-mtd@lists.infradead.org
From: john cooper <john.cooper@oracle.com>
Subject: JFFS2 garbage collection spike..
Message-ID: <506e0f7d-6555-59ba-45f7-c61e8f23a2b5@oracle.com>
Date: Sun, 27 Oct 2019 12:26:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910270170
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910270170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_092622_803813_10F01B37 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: john cooper <john.cooper@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi All,
     We've hit what appears to be an idiosyncrasy with older jffs2 where 
a large
reclaim backlog is not garbage collected during runtime, presumably due to
outstanding free block total being substantially above gc_trigger. In this
scenario reclaim does not kick in during runtime, however upon a reboot 
after
a partition is mounted and modified, reclaim kicks in causing a stall in 
boot of
several minutes on a 400Mhz ARM926EJ-S.  The partition is sized at 32MB with
under 5% usage.  The application is heavily modifying a single small file.

Search of list archives for a similar issue and examination of history 
from where
this was observed in kernel version 3.16.7 (fs/jffs2 commit 16b9057804c) to
current didn't reveal anything obviously relevant.  We've subsequently 
produced
a work around which forces runtime gc to trigger at a lower threshold, 
eliminating
the protracted boot time reclaim.  However we're interested in a 
general, long-term
solution and are wondering if the description here may sound familiar to 
others,
either encountering the issue or any discussion/implementation of an 
approach to
address the same.

Thanks,

-john


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
