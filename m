Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE77016F9E9
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Feb 2020 09:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bOhqnVybDZVn9VHNT06sbxTf0dhcZbDpKMHtMxeXeho=; b=DeIhLvj+9sS0A3
	1f3Zzu5khAGSIkx1qJY7AdxRPfoiY3z9CrgamYdnPw9tCB7GEbPfKdtdZeA2G4LB5Yxt2FJ5hVN7k
	hMP4G4gPG2ODq5ejd+dQPEyd0nZy/tk2I3z+pNtZJrKqiNl5gpXwYHQTIxIK1KjpUNNAlL2Bhv1xF
	fDrrCY9QebN++HdGukFB81NzpZ74LG1tt7YiWAEFAs9rHArLbex5h8dbtFrnCh4LRXnFcrJT1F0jB
	H3MabyFllKiyDrMkCbCa4dagqnAJpzuA6ntPPr3/YjywMKfKLQrOpt8K4SiHzsP1FZOOkz0bwOr3t
	LkVanyV+zFRBP5mYVQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sIz-0004zk-Pa; Wed, 26 Feb 2020 08:44:33 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sIp-0004z8-RX
 for linux-mtd@lists.infradead.org; Wed, 26 Feb 2020 08:44:25 +0000
Received: by mail-yw1-xc44.google.com with SMTP id w18so620743ywg.0
 for <linux-mtd@lists.infradead.org>; Wed, 26 Feb 2020 00:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=ICQqJ5nTQBj63/kFKTmwVgFzvoSrAgyXz/sQL2og8oc=;
 b=oFDDywPg8XhTe+hXgtmyNCC/4ZLLHmHjTU+TrrUZLxsWIVBFT3SurjF9AitWoyiPQk
 THX5I8DADc65Ra7xHSTgquCUgWL3nlL91a5FRhC/qUDOs+Humq1L00ZBc9LE2+MszVq9
 mfWBKDXq1Yoci5Lowk0jPRiqtrZX6fUV/M6NqG77xZDHSV7s1pGdSJe61g7WiqiFi6F6
 r8nsDfsKYZtngmGRplOkn+yti7QipYN9QlQoFdbTKTX7KCRZC8YqhMvaTo1gNm5VFSmG
 oovrIoqkbKrrpk6h2hTLweTLtjKn2UeLULuz3QP90ntGCLjTyfgh5MvrNRPVCZ/XkRXH
 /Nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=ICQqJ5nTQBj63/kFKTmwVgFzvoSrAgyXz/sQL2og8oc=;
 b=XIXUw1nFByImQxci5VwDS2USFSwEIKes+tjh9EKST+5eoeGcnBk9G2y6b0GHoTW/G0
 assp5JYl5suU8edQTx/JHUjS6wRbhLN/TS2bQHIPYG4PK/8greaDaF2OpnyMB8uqiATL
 TxMT2ztw+S6bVbyDV9iSX+2d87fF8sR8t2fRS1zWUNbk8H34rxNG921P+7c0BVe4oHIN
 qAaOvDRQfScUtvCtV7IbMgeltsLk4Ckdg3xBOFG3re48mFAB5dsspwNA0BkNc0NRkHgx
 mcyWbSqBs06sxeAQXMoAsk+6YwyRRSv3E1pGpo7MObpxdUNoVk8FPcUhlmqt0F/C7Irn
 nTRw==
X-Gm-Message-State: APjAAAVHUbsil+oMu5FWe28lY7dmevTANO7sRmJh03XTNqu4Ll49Y7Oe
 5jWUPbPIWQIEc/8HSoawFdAd7msHzfo7k0HkTYs=
X-Google-Smtp-Source: APXvYqzFgp2H7AurbmdzB9JxSkwMp44diAKOV8n+VaNjT/yIjNaFjY2CSLENdW5vfJkW8drAS93MPj1RmW4Kw478EHk=
X-Received: by 2002:a81:9910:: with SMTP id q16mr2549467ywg.105.1582706662345; 
 Wed, 26 Feb 2020 00:44:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:42d2:0:0:0:0:0 with HTTP; Wed, 26 Feb 2020 00:44:21
 -0800 (PST)
From: Cynthia Eden <aaa.mboma@gmail.com>
Date: Wed, 26 Feb 2020 08:44:21 +0000
Message-ID: <CAErK_VjW4LhAL8qMW3Ov8YTSZy71HpF1xyjgAHwUTrSCUR4ijQ@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_004423_887058_201EC3F5 
X-CRM114-Status: UNSURE (  -0.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [cyeden1[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aaa.mboma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: cyeden1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello i have some good news for you,get back to me for more details

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
