.class public final Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˏי;


# instance fields
.field public final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ˏי;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏי;-><init>(I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˏי;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ˊʻ;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    :try_start_0
    const-string v1, "com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵎˊ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˏי;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/crypto/tink/shaded/protobuf/ᵎˊ;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ˏי;->ⁱˊ:Lcom/google/crypto/tink/shaded/protobuf/ˏי;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ˊʻ;->ﹳٴ:[Lcom/google/crypto/tink/shaded/protobuf/ᵎˊ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    return-void
.end method


# virtual methods
.method public ⁱˊ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    invoke-interface {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʼˎ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V

    return-void
.end method

.method public ﹳٴ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;

    invoke-interface {p3, p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʼˎ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    return-void
.end method
