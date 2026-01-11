.class public final synthetic Lˏˑ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˏˑ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lٴʻ/ʼˎ;Ljava/lang/Integer;)Lﹳˋ/ʽʽ;
    .locals 4

    .prologue
    iget v0, p0, Lˏˑ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lﹳʾ/ﾞʻ;

    new-instance v0, Lᵢ/ﹳٴ;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lᵢ/ﹳٴ;-><init>(IZ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iget p1, p1, Lﹳʾ/ﾞʻ;->ﹳٴ:I

    invoke-static {p1}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᵢ/ﹳٴ;->ʼˎ()Lﹳʾ/ᵔᵢ;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lﹳʾ/ˈ;

    iget v0, p1, Lﹳʾ/ˈ;->ﹳٴ:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/parse/ٴʼ;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/parse/ٴʼ;-><init>(IZ)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iput-object v2, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, v1, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v1, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/parse/ٴʼ;->ˈٴ()Lﹳʾ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    check-cast p1, Lﹳʽ/ˆʾ;

    iget-object p1, p1, Lﹳʽ/ˆʾ;->ﹳٴ:Lﹳʽ/ˊʻ;

    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    sget-object v0, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹳʽ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Lﹳʽ/ᵎﹶ;

    move-result-object v1

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lﹳʽ/ⁱˊ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v2

    iget-object v1, v1, Lﹳʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    sget-object v0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    invoke-virtual {v2, v0}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᵎᵔ;

    new-instance v1, Lﹳʽ/ˊʻ;

    invoke-virtual {v0}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹳʽ/ᵔי;->ﹳٴ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v0, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    invoke-virtual {v0, v1}, Lﹳʽ/ﹳᐧ;->ⁱˊ(Lﹳʽ/ˊʻ;)Lٴʻ/ʼˎ;

    move-result-object v1

    sget-object v2, Lﹳʽ/ﾞʻ;->ⁱˊ:Lﹳʽ/ﾞʻ;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lﹳʽ/ﾞʻ;->ⁱˊ(Lٴʻ/ʼˎ;Ljava/lang/Integer;)Lﹳˋ/ʽʽ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹳʽ/ﹳᐧ;->ᵎﹶ(Lﹳˋ/ʽʽ;)Lﹳʽ/ˉٴ;

    move-result-object v0

    check-cast v0, Lﹳʽ/ᴵᵔ;

    invoke-static {}, Lᴵﹳ/ˉـ;->ٴᵢ()Lᴵﹳ/ˈⁱ;

    move-result-object v1

    iget-object v2, v0, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˉـ;

    invoke-static {v3, v2}, Lᴵﹳ/ˉـ;->ᵢˏ(Lᴵﹳ/ˉـ;Ljava/lang/String;)V

    iget-object v2, v0, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˉـ;

    invoke-static {v3, v2}, Lᴵﹳ/ˉـ;->ʾˋ(Lᴵﹳ/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᴵˑ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ˉـ;

    invoke-static {v2, v0}, Lᴵﹳ/ˉـ;->ᴵˊ(Lᴵﹳ/ˉـ;Lᴵﹳ/ᴵˑ;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˉـ;

    invoke-virtual {v0}, Lᴵﹳ/ˉـ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ˉـ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v0}, Lᴵﹳ/ˉـ;->ˈٴ()Lᴵﹳ/ᴵˑ;

    move-result-object v0

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {v1, v2, v0, p1, p2}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    new-instance p2, Lﹳʽ/ʼˎ;

    invoke-direct {p2, p1}, Lﹳʽ/ʼˎ;-><init>(Lﹳʽ/ᴵᵔ;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Creating new keys is not allowed."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    check-cast p1, Lיʻ/ˆﾞ;

    iget-object p1, p1, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lיʻ/ᵎˊ;->ٴᵢ(Lיʻ/ˆʾ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ᵎˊ;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lיʻ/ٴʼ;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lיʻ/ˉٴ;->ٴᵢ(Lיʻ/ٴʼ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ˉٴ;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lיʻ/ᴵᵔ;

    invoke-static {p1, p2}, Lיʻ/ˈٴ;->ٴᵢ(Lיʻ/ᴵᵔ;Ljava/lang/Integer;)Lיʻ/ˈٴ;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lיʻ/ᴵˊ;

    invoke-static {p1, p2}, Lיʻ/ʾˋ;->ٴᵢ(Lיʻ/ᴵˊ;Ljava/lang/Integer;)Lיʻ/ʾˋ;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lיʻ/ـˆ;

    iget-object p1, p1, Lיʻ/ـˆ;->ﹳٴ:Lיʻ/ˆʾ;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lיʻ/ʽﹳ;->ٴᵢ(Lיʻ/ˆʾ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ʽﹳ;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lיʻ/ˏי;

    new-instance v0, Lcom/parse/ٴʼ;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ٴʼ;-><init>(IZ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iget p1, p1, Lיʻ/ˏי;->ﹳٴ:I

    invoke-static {p1}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/parse/ٴʼ;->ʽʽ()Lיʻ/ﹳᐧ;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lיʻ/ᵔﹳ;

    iget v0, p1, Lיʻ/ᵔﹳ;->ﹳٴ:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    new-instance v1, Lᵢ/ﹳٴ;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lᵢ/ﹳٴ;-><init>(IZ)V

    const/4 v2, 0x0

    iput-object v2, v1, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, v1, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, v1, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v1, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v1}, Lᵢ/ﹳٴ;->ᵔᵢ()Lיʻ/ˉˆ;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_9
    check-cast p1, Lיʻ/ᵔʾ;

    iget v0, p1, Lיʻ/ᵔʾ;->ﹳٴ:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    new-instance v1, Lˑי/ʽ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    iput-object p1, v1, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    iput-object p2, v1, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˑי/ʽ;->ﹳᐧ()Lיʻ/ﾞʻ;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    check-cast p1, Lיʻ/ٴﹶ;

    iget v0, p1, Lיʻ/ٴﹶ;->ﹳٴ:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "AES key size must be 16 or 32 bytes"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    new-instance v1, Lˏˆ/ﹳٴ;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lˏˆ/ﹳٴ;-><init>(IZ)V

    const/4 v2, 0x0

    iput-object v2, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v2, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, v1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p2

    iput-object p2, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget p1, p1, Lיʻ/ٴﹶ;->ⁱˊ:I

    invoke-static {p1}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ٴﹶ()Lיʻ/ᵎﹶ;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Lˏˑ/ˑﹳ;

    invoke-static {p1}, Lˏˑ/ʽ;->ﹳٴ(Lˏˑ/ˑﹳ;)V

    new-instance v0, Lcom/parse/ٴʼ;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ٴʼ;-><init>(IZ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iget p1, p1, Lˏˑ/ˑﹳ;->ﹳٴ:I

    invoke-static {p1}, Landroidx/leanback/widget/ˉˆ;->ʾᵎ(I)Landroidx/leanback/widget/ˉˆ;

    move-result-object p1

    iput-object p1, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/parse/ٴʼ;->ᴵˊ()Lˏˑ/ﹳٴ;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
