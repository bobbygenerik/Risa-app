.class public final Lʾˑ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵢˏ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method private final ˑﹳ()V
    .locals 0

    return-void
.end method

.method private final ﹳٴ()V
    .locals 0

    return-void
.end method

.method private final ﾞᴵ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_0
    const-class v0, [B

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ()V
    .locals 1

    iget v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    return-void
.end method

.method public final ⁱˊ()I
    .locals 1

    .prologue
    iget v0, p0, Lʾˑ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ʽ(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʾˑ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
