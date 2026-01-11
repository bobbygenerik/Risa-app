.class public Lⁱˊ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u2071\u02ca/\u02c8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʾˋ:Lⁱˊ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵˈ/ٴﹶ;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lᴵˈ/ٴﹶ;-><init>(I)V

    sput-object v0, Lⁱˊ/ˈ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lⁱˊ/ˈ;->ʾˋ:Lⁱˊ/ⁱˊ;

    if-nez p2, :cond_0

    new-instance p2, Lⁱˊ/ʽ;

    invoke-direct {p2, p0}, Lⁱˊ/ʽ;-><init>(Lⁱˊ/ˈ;)V

    iput-object p2, p0, Lⁱˊ/ˈ;->ʾˋ:Lⁱˊ/ⁱˊ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lⁱˊ/ˈ;->ʾˋ:Lⁱˊ/ⁱˊ;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ﹳٴ(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
