Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6D2172A6B
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 22:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MYV9wRmnXwcL2Ktzsnn9y2UWp5tgrOU5fpZcQ6pvpsM=; b=SrMYfgluEYXbRR
	S/BShNYjqDFGqB3QA01vpcaGTMySbAOSlb5GwhzQvTPJQFOfmZNEJUardbSd/3N6dy86tRDwoFIGU
	cDcG2c5R0rBwIKhjuQggw3poer4c1TnQEnsnXp1S3vAXPA2wTJ4pJr8joP71QFz0pX7pUVNgKlqeO
	SdCnPl18sWZUBXQho4RD4CzOyduOsj2V1GJOzkZtJYYJNoQxkobfzPVtglb6rK7vXBYf5ozSgCIk+
	bjGVJbsNhjktF7FCK+vr7GOcpX3ma7rEu5u6MlwtuuNff8G0Fe6dzUrAAKiyDO6BIBCDtDAMeeaIB
	aZgeLRa9b38PdbBvAKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Qyc-0003Ea-U2; Thu, 27 Feb 2020 21:45:50 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7QyP-00038W-Nl
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 21:45:39 +0000
Received: by mail-yw1-xc42.google.com with SMTP id d206so1107966ywa.12
 for <linux-mtd@lists.infradead.org>; Thu, 27 Feb 2020 13:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=3Uk6WSlPgg2mi3HnuZ4WllqBBeIatoU9lrS+iTrTuL0=;
 b=PJYIzFL+E2zT76fpAn8bGbyvPomwE2J1c8aePc2MYgUYYfibFFMmkxRpedIJyMuvpJ
 jcHmbpUVfRobBF85gU2UF9FChW61bvRBeNtkglDmA8il1hkXNYk78E1F5KKkD93mnhJr
 diUpgtIU/gXFOyLVU/Cmn1koc4HC5TExbA1xd89gjEbBzCMZNwN4IIKP6hX/IXyQvem3
 amTpg6ErN0myGxLDAMShpGZ16MkhJPxIJ8SQUmI1XOUkD5YwGoKr72yLSSFJKEcAN1kA
 ku1cL6T3NEE74sze9ICLVzTOtKMau+52wv+hmOLwV8J7M5S91zXoUpLBP58VBwN+EHqQ
 BZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=3Uk6WSlPgg2mi3HnuZ4WllqBBeIatoU9lrS+iTrTuL0=;
 b=Gc8meHUQKB49JXA1Id8VbxFx2zcV6+ElDfZ/th/+CamQoEFn+p95lf6PleqAKR1fXX
 bXerIBpcQTMg3Y1UY4Od9sTj8utJP0MXUPSDZVEKywZpgZFFTj5VwJI+DXeAII6Fqd8u
 yQqB2AJgTSxCqKh/S6M9+GMJAKzGr0n/88jX6ue9Vdm2MxDjqd4eKEwXy3pJ7ZKIvgwH
 du2to2Dn/nxqgq10Q8wS4JLSb3g05Hz9rA7zt2TDbCBOWmxUFt8seKy/ed7oNhDH+Tsk
 zEb9b9KxImhwYPP89mHSdfitOWGsWNB9070F8oGWlv9wBu6UUcY6f2feVtSBKBqrRJZZ
 3ByQ==
X-Gm-Message-State: APjAAAUeHbBTkxYjkzSNMTFfmvqe2ZBclV7dppC36/4N5s4y+VHlRXts
 xzBEkjXD+WSOko0mugpas1RpILThSzdqH/Gp79g=
X-Google-Smtp-Source: APXvYqxwuv4wRxccEtdG8TYgoY3rZ1JNQbQcDOdvsTTdHGEzGNK7OlRhCN3y3RZ/c3ZF7c64/WcB/4FPrG7rs9/xfp4=
X-Received: by 2002:a81:47d5:: with SMTP id u204mr1558090ywa.475.1582839935449; 
 Thu, 27 Feb 2020 13:45:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:e707:0:0:0:0:0 with HTTP; Thu, 27 Feb 2020 13:45:35
 -0800 (PST)
From: Haein Jung <anacouka2015@gmail.com>
Date: Thu, 27 Feb 2020 21:45:35 +0000
Message-ID: <CAPs97VkJWKGo5t5DfFLHX+iwsdtSZCzD6W5gOJbL0ZFghLeAFA@mail.gmail.com>
Subject: Good to see you
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_134538_016057_2FFFE54A 
X-CRM114-Status: UNSURE (  -0.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anacouka2015[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [haeinjung52[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [anacouka2015[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: haeinjung52@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

My name is  Hae-in Jung. I would like to establish mutual contact with
you for a specific purpose

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
