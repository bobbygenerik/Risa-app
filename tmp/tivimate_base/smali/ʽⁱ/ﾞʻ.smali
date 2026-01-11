.class public final Lʽⁱ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʽⁱ/ﾞʻ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʽⁱ/ﾞʻ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʽⁱ/ˈʿ;

    invoke-direct {v0, p1}, Lʽⁱ/ˈʿ;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lʽⁱ/ˉʿ;

    invoke-direct {v0, p1}, Lʽⁱ/ˉʿ;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lʽⁱ/ᵔʾ;

    invoke-direct {v0, p1}, Lʽⁱ/ᵔʾ;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʽⁱ/ﾞʻ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lʽⁱ/ˈʿ;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lʽⁱ/ˉʿ;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lʽⁱ/ᵔʾ;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
