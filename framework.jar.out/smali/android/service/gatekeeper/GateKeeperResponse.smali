.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1


# instance fields
.field private mPayload:[B

.field private final mResponseCode:I

.field private mShouldReEnroll:Z

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    .line 40
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(ILandroid/service/gatekeeper/GateKeeperResponse$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/service/gatekeeper/GateKeeperResponse$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/service/gatekeeper/GateKeeperResponse;I)V
    .locals 0
    .param p0, "x0"    # Landroid/service/gatekeeper/GateKeeperResponse;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/service/gatekeeper/GateKeeperResponse;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/service/gatekeeper/GateKeeperResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setShouldReEnroll(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/service/gatekeeper/GateKeeperResponse;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/service/gatekeeper/GateKeeperResponse;
    .param p1, "x1"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse;->setPayload([B)V

    return-void
.end method

.method private setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    .line 117
    iput-object p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    .line 118
    return-void
.end method

.method private setShouldReEnroll(Z)V
    .locals 0
    .param p1, "shouldReEnroll"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    .line 114
    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 109
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return v0
.end method

.method public getShouldReEnroll()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 80
    iget v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-ne v1, v0, :cond_1

    .line 82
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-nez v1, :cond_0

    .line 84
    iget-boolean v1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
