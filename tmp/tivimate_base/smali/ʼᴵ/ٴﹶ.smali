.class public final Lʼᴵ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᴵ/ﾞᴵ;


# instance fields
.field public final ʽ:Lʻᵢ/ﹳٴ;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lʻᵢ/ﹳٴ;I)V
    .locals 0

    iput p3, p0, Lʼᴵ/ٴﹶ;->ﹳٴ:I

    iput-object p1, p0, Lʼᴵ/ٴﹶ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʼᴵ/ٴﹶ;->ʽ:Lʻᵢ/ﹳٴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    iget v0, p0, Lʼᴵ/ٴﹶ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lﹶˑ/ⁱˊ;

    invoke-direct {v0, p0}, Lﹶˑ/ⁱˊ;-><init>(Lʼᴵ/ٴﹶ;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lʼᴵ/ˆʾ;

    invoke-direct {v0, p0}, Lʼᴵ/ˆʾ;-><init>(Lʼᴵ/ٴﹶ;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
