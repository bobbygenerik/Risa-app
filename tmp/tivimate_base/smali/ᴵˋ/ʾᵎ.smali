.class public final Lᴵˋ/ʾᵎ;
.super Lcom/google/android/gms/internal/measurement/ˏʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ᵎﹶ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lᴵˋ/ʾᵎ;->ᵎﹶ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lᴵˋ/ʾᵎ;->ᵎﹶ:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_0
    const-string v0, "IN_PROGRESS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
