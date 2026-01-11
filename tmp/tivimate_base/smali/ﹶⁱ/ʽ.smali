.class public final Lﹶⁱ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶⁱ/ﹳٴ;


# static fields
.field public static final ᴵˊ:Lﹶⁱ/ʽ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶⁱ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹶⁱ/ʽ;-><init>(I)V

    sput-object v0, Lﹶⁱ/ʽ;->ᴵˊ:Lﹶⁱ/ʽ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹶⁱ/ʽ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˑﹳ(Lʿʾ/ᵢˏ;Lʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 4

    .prologue
    iget p2, p0, Lﹶⁱ/ʽ;->ʾˋ:I

    packed-switch p2, :pswitch_data_0

    invoke-interface {p1}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵﹶ/ⁱˊ;

    iget-object p1, p1, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object p1, p1, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lᴵﹶ/ﾞᴵ;

    iget-object p1, p1, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    iget-object p1, p1, Lᵢٴ/ˈ;->ˈ:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Lʾˑ/ⁱˊ;

    sget-object v0, Lʿٴ/ⁱˊ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/leanback/widget/יﹳ;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    iput v2, v0, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    iput v3, v0, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    if-nez v1, :cond_1

    iget v1, v0, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    iget-object v0, v0, Landroidx/leanback/widget/יﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p1, v0

    :goto_1
    invoke-direct {p2, p1}, Lʾˑ/ⁱˊ;-><init>([B)V

    return-object p2

    :pswitch_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
