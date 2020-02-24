Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A8716B618
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Feb 2020 00:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CpoT/4RYbYkaeMYZMCYK6P/Bk5PIZkkg5xx8qbKGlok=; b=QAOUa5PluYfYIc
	W/pQGTi46DD4/dSUDMmQY3VMBvXQa1fQ7LsIFtZoP+VEnWjFuEHFaWhT+lbjR0TlInfvs5wtBRKGJ
	BUytXYiyQzh5KhAO/LJ6lFxW94w00lhrwKZXErQj1NDaGcg0F+FcRANXZK/OEhS8ogaCKivCeY8zS
	QFDiYUGOwdXzSHghcLVQmwUH2ljJSJM67Y8zkjF2TVljCanKVQPB9LNwrBmib629DhGriEx7gzsDh
	vdvvmFEEtPC33Xjq4NKFB9OJazsjqmKwL2cimtWlswCSbfhaWlYtJECCbj+Klclgw0KALIQKWBKz5
	ZLSVCMobJo6R/JXBwO/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Nbk-0002BH-Of; Mon, 24 Feb 2020 23:57:52 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Nbc-0002Ax-OH
 for linux-mtd@lists.infradead.org; Mon, 24 Feb 2020 23:57:45 +0000
Received: by mail-oi1-x244.google.com with SMTP id q81so10823622oig.0
 for <linux-mtd@lists.infradead.org>; Mon, 24 Feb 2020 15:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=E/e++dZNrLP95f8mQeSyqNWxeHBZO1usUka5rlOqoU8=;
 b=QT7e2QTmpjFh7sPnVkDW04ofF/1mAj5l3NJJNTgC/0yj3OBmGrlGxs8+YaY8Pj90fD
 dRalmefoxblXsTQNgLalT9kypCT/fflDKiyguPA0yyQD4HIcyC1hho3dkzUKO6u4KPNv
 E1VYHUZAZIZzuHpx8cUgF0aAm+NWww/P8VFq/vSuCUgVZrt5bKFrKBiUlixBa1/ej1O5
 2z9Sg9bQ77Pf8TSLgvXHdf2rnH2zscLZdZbo5Yj/ihzh6AQhJnLQBgLx0xs60x9naPfz
 buSyrahhOtuNfgP7r25DvjdE/VCvUpFyWgwQYOwwnmgaGsR1rpxuHHw89A+w+lOWE5PC
 hKlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=E/e++dZNrLP95f8mQeSyqNWxeHBZO1usUka5rlOqoU8=;
 b=OlltJpt4SG3/uO30r7yulO2pY58su4U1l925cthoizbV7kzBhz8Pv6BCb/UgjrbNDp
 inVauTsq3DK/zSxov/naql/ibRvAlIlVDRxYUxSczScU7DHnmIGAPV5CGh63PzPq8Tga
 D3Hgx+OYYi5B7QdXlXmmmi8r5syOx0msfpFmWrcqrdIxUxvr/HMaXQW/YrtTpM/UnaGd
 SbSNKR9t0ljLoIMZVIHnxLJUTZUBo+8T/xfCUUkU1sxX87Buc+UaiJ5yFGU3uVQiugff
 yAm8RDCa9IJ1USupPW46f3V+FPgEoRxoZHnND3aaFXE8KP8qKcrZgBKMMqaZwHZgkD+v
 UWeA==
X-Gm-Message-State: APjAAAVfaRdLViT0jCRsIMgG5ct6n6n2mli+Q8OG4dPneXOhyRmDYl2V
 079lpvs4juel7JpLqZw5x+sKT8aJnT0PsOgdeeM=
X-Google-Smtp-Source: APXvYqxoWqxZF53LWceFgw7XFzYknaz7Erx/9gvx2hSWtByyJPbsMD0i5GygY40Q0fhBiA+A9wOLFP3ZJH3YuQ9nDSM=
X-Received: by 2002:aca:f354:: with SMTP id r81mr1246111oih.90.1582588663389; 
 Mon, 24 Feb 2020 15:57:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6830:2366:0:0:0:0 with HTTP; Mon, 24 Feb 2020 15:57:42
 -0800 (PST)
From: Chang Myung <6466789@gmail.com>
Date: Tue, 25 Feb 2020 00:57:42 +0100
Message-ID: <CAMZJ9OhVapHks1NdmCMM8KCQQWvmxcWaUwvb9Xx4jK2=gdRH0g@mail.gmail.com>
Subject: Good day !
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_155744_785886_0B9E18EA 
X-CRM114-Status: UNSURE (  -3.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [6466789[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [6466789[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: changmyny@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Good day  !
 I sent you mail before regarding my project plan in your country that
I would like to discuss with you, can you please get back to me for
further details through my private email (changmyny@gmail.com)
Regards,
Chang Myung.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
