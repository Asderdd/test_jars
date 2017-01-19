.class public Landroid/net/wifi/passpoint/WifiPasspointPolicy;
.super Ljava/lang/Object;
.source "WifiPasspointPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_SP:I = 0x0

.field public static final ROAMING_PARTNER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasspointPolicy"

.field public static final UNRESTRICTED:I = 0x2


# instance fields
.field private final ENTERPRISE_PHASE2_MSCHAP:Ljava/lang/String;

.field private final ENTERPRISE_PHASE2_MSCHAPV2:Ljava/lang/String;

.field private final INT_ANONYMOUS_IDENTITY:Ljava/lang/String;

.field private final INT_CA_CERT:Ljava/lang/String;

.field private final INT_CLIENT_CERT:Ljava/lang/String;

.field private final INT_EAP:Ljava/lang/String;

.field private final INT_ENTERPRISEFIELD_NAME:Ljava/lang/String;

.field private final INT_IDENTITY:Ljava/lang/String;

.field private final INT_PASSWORD:Ljava/lang/String;

.field private final INT_PHASE2:Ljava/lang/String;

.field private final INT_PRIVATE_KEY:Ljava/lang/String;

.field private final INT_SIM_SLOT:Ljava/lang/String;

.field private final ISO8601DATEFORMAT:Ljava/lang/String;

.field private mBssid:Ljava/lang/String;

.field private mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

.field private mCredentialPriority:I

.field private mIsHomeSp:Z

.field private mName:Ljava/lang/String;

.field private mRestriction:I

.field private mRoamingPriority:I

.field private mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/passpoint/WifiPasspointCredential;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "pc"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .param p5, "restriction"    # I
    .param p6, "ishomesp"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "private_key"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_PRIVATE_KEY:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "phase2"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_PHASE2:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "password"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_PASSWORD:Ljava/lang/String;

    .line 55
    const-string v0, "identity"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_IDENTITY:Ljava/lang/String;

    .line 56
    const-string v0, "eap"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_EAP:Ljava/lang/String;

    .line 57
    const-string v0, "client_cert"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_CLIENT_CERT:Ljava/lang/String;

    .line 58
    const-string v0, "ca_cert"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_CA_CERT:Ljava/lang/String;

    .line 59
    const-string v0, "anonymous_identity"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_ANONYMOUS_IDENTITY:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "sim_slot"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_SIM_SLOT:Ljava/lang/String;

    .line 61
    const-string v0, "android.net.wifi.WifiConfiguration$EnterpriseField"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->INT_ENTERPRISEFIELD_NAME:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->ISO8601DATEFORMAT:Ljava/lang/String;

    .line 63
    const-string v0, "auth=MSCHAPV2"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->ENTERPRISE_PHASE2_MSCHAPV2:Ljava/lang/String;

    .line 64
    const-string v0, "auth=MSCHAP"

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->ENTERPRISE_PHASE2_MSCHAP:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    .line 71
    if-eqz p4, :cond_0

    .line 72
    invoke-virtual {p4}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getPriority()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    .line 75
    :cond_0
    const/16 v0, 0x80

    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    .line 76
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .line 78
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    .line 79
    iput p5, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    .line 80
    iput-boolean p6, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    .line 81
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/wifi/passpoint/WifiPasspointPolicy;)I
    .locals 5
    .param p1, "another"    # Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 282
    const-string v2, "PasspointPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v2, "PasspointPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "another:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-nez p1, :cond_0

    .line 347
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-boolean v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    if-ne v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->isHomeSp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    const-string v1, "PasspointPolicy"

    const-string v2, "compare HomeSP  first, this is HomeSP, another isn\'t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_1
    iget-boolean v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    if-ne v2, v1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->isHomeSp()Z

    move-result v2

    if-ne v2, v1, :cond_5

    .line 292
    const-string v2, "PasspointPolicy"

    const-string v3, "both HomeSP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getCredentialPriority()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 295
    const-string v1, "PasspointPolicy"

    const-string/jumbo v2, "this priority is higher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_2
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getCredentialPriority()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 298
    const-string v0, "PasspointPolicy"

    const-string v1, "both priorities equal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const-string v0, "PasspointPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare mName return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    const-string v0, "PasspointPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare mCredential return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 317
    goto/16 :goto_0

    .line 319
    :cond_5
    iget-boolean v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    if-nez v2, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->isHomeSp()Z

    move-result v2

    if-nez v2, :cond_9

    .line 320
    const-string v2, "PasspointPolicy"

    const-string v3, "both RoamingSp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getRoamingPriority()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 323
    const-string v1, "PasspointPolicy"

    const-string/jumbo v2, "this priority is higher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 325
    :cond_6
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    invoke-virtual {p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->getRoamingPriority()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 326
    const-string v0, "PasspointPolicy"

    const-string v1, "both priorities equal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    const-string v0, "PasspointPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare mName return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 333
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    if-eqz v0, :cond_9

    .line 334
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 335
    const-string v0, "PasspointPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare mCredential return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    iget-object v3, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-virtual {v2, v3}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-virtual {v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 342
    goto/16 :goto_0

    .line 346
    :cond_9
    const-string v0, "PasspointPolicy"

    const-string v1, "both policies equal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 34

    .prologue
    .line 145
    new-instance v28, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v28 .. v28}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 146
    .local v28, "wfg":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 147
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "create bssid:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 152
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "create ssid:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 159
    :cond_1
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 160
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->clear()V

    .line 161
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    .line 162
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    .line 165
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->clear()V

    .line 166
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    .line 167
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    .line 170
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->clear()V

    .line 171
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    .line 172
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    .line 174
    const-class v29, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v12

    .line 175
    .local v12, "enterpriseFieldArray":[Ljava/lang/Class;
    const/4 v13, 0x0

    .line 178
    .local v13, "enterpriseFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v12

    .local v4, "arr$":[Ljava/lang/Class;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    aget-object v19, v4, v15

    .line 179
    .local v19, "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.net.wifi.WifiConfiguration$EnterpriseField"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 180
    move-object/from16 v13, v19

    .line 184
    .end local v19    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "class chosen "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v3, 0x0

    .local v3, "anonymousId":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "caCert":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 188
    .local v7, "clientCert":Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "eap":Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    .local v16, "identity":Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    .line 189
    .local v20, "password":Ljava/lang/reflect/Field;
    const/16 v21, 0x0

    .local v21, "phase2":Ljava/lang/reflect/Field;
    const/16 v22, 0x0

    .line 191
    .local v22, "privateKey":Ljava/lang/reflect/Field;
    const-class v29, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 194
    .local v14, "fields":[Ljava/lang/reflect/Field;
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v4

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_c

    aget-object v26, v4, v15

    .line 195
    .local v26, "tempField":Ljava/lang/reflect/Field;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "anonymous_identity"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 196
    move-object/from16 v3, v26

    .line 197
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "field "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 178
    .end local v3    # "anonymousId":Ljava/lang/reflect/Field;
    .end local v5    # "caCert":Ljava/lang/reflect/Field;
    .end local v7    # "clientCert":Ljava/lang/reflect/Field;
    .end local v10    # "eap":Ljava/lang/reflect/Field;
    .end local v14    # "fields":[Ljava/lang/reflect/Field;
    .end local v16    # "identity":Ljava/lang/reflect/Field;
    .end local v20    # "password":Ljava/lang/reflect/Field;
    .end local v21    # "phase2":Ljava/lang/reflect/Field;
    .end local v22    # "privateKey":Ljava/lang/reflect/Field;
    .end local v26    # "tempField":Ljava/lang/reflect/Field;
    .local v4, "arr$":[Ljava/lang/Class;
    .restart local v19    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 198
    .end local v19    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "anonymousId":Ljava/lang/reflect/Field;
    .local v4, "arr$":[Ljava/lang/reflect/Field;
    .restart local v5    # "caCert":Ljava/lang/reflect/Field;
    .restart local v7    # "clientCert":Ljava/lang/reflect/Field;
    .restart local v10    # "eap":Ljava/lang/reflect/Field;
    .restart local v14    # "fields":[Ljava/lang/reflect/Field;
    .restart local v16    # "identity":Ljava/lang/reflect/Field;
    .restart local v20    # "password":Ljava/lang/reflect/Field;
    .restart local v21    # "phase2":Ljava/lang/reflect/Field;
    .restart local v22    # "privateKey":Ljava/lang/reflect/Field;
    .restart local v26    # "tempField":Ljava/lang/reflect/Field;
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "ca_cert"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 199
    move-object/from16 v5, v26

    goto :goto_2

    .line 200
    :cond_6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "client_cert"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 201
    move-object/from16 v7, v26

    .line 202
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "field "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    :cond_7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "eap"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 204
    move-object/from16 v10, v26

    .line 205
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "field "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 206
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string v30, "identity"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 207
    move-object/from16 v16, v26

    .line 208
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "field "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 209
    :cond_9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "password"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 210
    move-object/from16 v20, v26

    .line 211
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "field "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 212
    :cond_a
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "phase2"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 213
    move-object/from16 v21, v26

    .line 214
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "field "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 216
    :cond_b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "private_key"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 217
    move-object/from16 v22, v26

    goto/16 :goto_2

    .line 222
    .end local v26    # "tempField":Ljava/lang/reflect/Field;
    :cond_c
    const/16 v25, 0x0

    .line 224
    .local v25, "setValue":Ljava/lang/reflect/Method;
    invoke-virtual {v13}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v4

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_d

    aget-object v18, v4, v15

    .line 225
    .local v18, "m":Ljava/lang/reflect/Method;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "setValue"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 226
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "method "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v25, v18

    .line 234
    .end local v18    # "m":Ljava/lang/reflect/Method;
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getType()Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "eapmethod":Ljava/lang/String;
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "eapmethod:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v11, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v29, "TTLS"

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 240
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "auth=MSCHAPV2"

    aput-object v32, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getUserName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getPassword()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "anonymous@"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getRealm()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_e
    const/4 v6, 0x0

    .line 248
    .local v6, "cacertificate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getCaRootCertPath()Ljava/lang/String;

    move-result-object v24

    .line 249
    .local v24, "rootCA":Ljava/lang/String;
    if-nez v24, :cond_12

    .line 250
    const/4 v6, 0x0

    .line 254
    :goto_4
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "cacertificate:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v6, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v29, "TLS"

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 259
    const/16 v27, 0x0

    .line 260
    .local v27, "usercertificate":Ljava/lang/String;
    const/16 v23, 0x0

    .line 261
    .local v23, "privatekey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/passpoint/WifiPasspointCredential;->getClientCertPath()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "clientCertPath":Ljava/lang/String;
    if-eqz v8, :cond_f

    .line 263
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "keystore://WIFI_HS20USRPKEY_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 264
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "keystore://WIFI_HS20USRCERT_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 266
    :cond_f
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "privatekey:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "usercertificate:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz v23, :cond_10

    if-eqz v27, :cond_10

    .line 269
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v23, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v27, v30, v31

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v6    # "cacertificate":Ljava/lang/String;
    .end local v8    # "clientCertPath":Ljava/lang/String;
    .end local v11    # "eapmethod":Ljava/lang/String;
    .end local v23    # "privatekey":Ljava/lang/String;
    .end local v24    # "rootCA":Ljava/lang/String;
    .end local v27    # "usercertificate":Ljava/lang/String;
    :cond_10
    :goto_5
    return-object v28

    .line 224
    .restart local v18    # "m":Ljava/lang/reflect/Method;
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 252
    .end local v18    # "m":Ljava/lang/reflect/Method;
    .restart local v6    # "cacertificate":Ljava/lang/String;
    .restart local v11    # "eapmethod":Ljava/lang/String;
    .restart local v24    # "rootCA":Ljava/lang/String;
    :cond_12
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "keystore://WIFI_HS20CACERT_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_4

    .line 273
    .end local v6    # "cacertificate":Ljava/lang/String;
    .end local v11    # "eapmethod":Ljava/lang/String;
    .end local v24    # "rootCA":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 274
    .local v9, "e":Ljava/lang/Exception;
    const-string v29, "PasspointPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "createWifiConfiguration err:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCredential()Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    return-object v0
.end method

.method public getCredentialPriority()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    return v0
.end method

.method public getRestriction()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    return v0
.end method

.method public getRoamingPriority()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public isHomeSp()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mBssid:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)V
    .locals 0
    .param p1, "newCredential"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .line 119
    return-void
.end method

.method public setCredentialPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    .line 129
    return-void
.end method

.method public setHomeSp(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    .line 109
    return-void
.end method

.method public setRestriction(I)V
    .locals 0
    .param p1, "r"    # I

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    .line 99
    return-void
.end method

.method public setRoamingPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 133
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasspointPolicy: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CredentialPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredentialPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRoamingPriority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRoamingPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mRestriction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ishomesp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mIsHomeSp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Credential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointPolicy;->mCredential:Landroid/net/wifi/passpoint/WifiPasspointCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 369
    return-void
.end method
