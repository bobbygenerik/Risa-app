.class public final Lᵢᵢ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ˑﹳ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lᵢᵢ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lᵢᵢ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lᵔʿ/ⁱˊ;

    invoke-direct {v0}, Lᵔʿ/ﹳٴ;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, v0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    invoke-virtual {v0}, Lᵔʿ/ⁱˊ;->ʼˎ()V

    return-object v0

    :pswitch_0
    new-instance v0, Lᵔʿ/ˈ;

    invoke-direct {v0}, Lᵔʿ/ˈ;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lﹳˉ/ﹳٴ;

    new-instance v1, Lᵔʿ/ʽ;

    invoke-direct {v1}, Lᵔʿ/ﹳٴ;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, v1, Lᵔʿ/ʽ;->ᵔᵢ:[I

    invoke-virtual {v1}, Lᵔʿ/ʽ;->ʼˎ()V

    invoke-direct {v0, v1}, Lﹳˉ/ﹳٴ;-><init>(Lᵔʿ/ﹳٴ;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lﹳˉ/ﹳٴ;

    new-instance v1, Lᵔʿ/ˈ;

    invoke-direct {v1}, Lᵔʿ/ˈ;-><init>()V

    invoke-direct {v0, v1}, Lﹳˉ/ﹳٴ;-><init>(Lᵔʿ/ﹳٴ;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lᵢᵢ/ﹳٴ;

    new-instance v1, Lˏˉ/ⁱˊ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lˏˉ/ⁱˊ;->ﹳٴ:[B

    const/4 v3, 0x0

    iput v3, v1, Lˏˉ/ⁱˊ;->ⁱˊ:I

    iput v3, v1, Lˏˉ/ⁱˊ;->ʽ:I

    iput-object v2, v1, Lˏˉ/ⁱˊ;->ˈ:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lᵢᵢ/ﹳٴ;-><init>(I)V

    iput-object v1, v0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    return-object v0

    :pswitch_4
    new-instance v0, Lᵢᵢ/ﹳٴ;

    new-instance v1, Lʻˑ/ﹳٴ;

    new-instance v2, Lˏˉ/ﹳٴ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lˏˉ/ﹳٴ;->ﹳٴ:[I

    invoke-direct {v1}, Lʻˑ/ﹳٴ;-><init>()V

    iput-object v2, v1, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, v1, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    iput-boolean v2, v1, Lʻˑ/ﹳٴ;->ʽ:Z

    invoke-direct {v0, v2}, Lᵢᵢ/ﹳٴ;-><init>(I)V

    iput-object v1, v0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
