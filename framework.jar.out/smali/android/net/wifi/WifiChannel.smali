.class public Landroid/net/wifi/WifiChannel;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CHANNEL_NUM:I = 0xc4

.field private static final MAX_FREQ_MHZ:I = 0x16c1

.field private static final MIN_CHANNEL_NUM:I = 0x1

.field private static final MIN_FREQ_MHZ:I = 0x96c


# instance fields
.field public channelNum:I

.field public freqMHz:I

.field public isDFS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/net/wifi/WifiChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    iget v2, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v3, 0x96c

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v3, 0x16c1

    if-le v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 53
    :cond_1
    :goto_0
    return v0

    .line 52
    :cond_2
    iget v2, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    if-lt v2, v0, :cond_3

    iget v2, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    const/16 v3, 0xc4

    if-le v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
