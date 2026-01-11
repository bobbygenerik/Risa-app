.class public abstract Lٴʻ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public static ﹳٴ(Lᴵﹳ/ʻᵎ;)Lᴵﹳ/ﹶᐧ;
    .locals 5

    .prologue
    invoke-static {}, Lᴵﹳ/ﹶᐧ;->ᴵˊ()Lᴵﹳ/ˊᵔ;

    move-result-object v0

    invoke-virtual {p0}, Lᴵﹳ/ʻᵎ;->ᴵᵔ()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ﹶᐧ;

    invoke-static {v2, v1}, Lᴵﹳ/ﹶᐧ;->ᵢˏ(Lᴵﹳ/ﹶᐧ;I)V

    invoke-virtual {p0}, Lᴵﹳ/ʻᵎ;->ˈٴ()Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ᴵʼ;

    invoke-static {}, Lᴵﹳ/ˈˏ;->ˈٴ()Lᴵﹳ/ـﹶ;

    move-result-object v2

    invoke-virtual {v1}, Lᴵﹳ/ᴵʼ;->ˈٴ()Lᴵﹳ/ˉـ;

    move-result-object v3

    invoke-virtual {v3}, Lᴵﹳ/ˉـ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ˈˏ;

    invoke-static {v4, v3}, Lᴵﹳ/ˈˏ;->ᵢˏ(Lᴵﹳ/ˈˏ;Ljava/lang/String;)V

    invoke-virtual {v1}, Lᴵﹳ/ᴵʼ;->ٴᵢ()Lᴵﹳ/ʿ;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ˈˏ;

    invoke-static {v4, v3}, Lᴵﹳ/ˈˏ;->ᴵˊ(Lᴵﹳ/ˈˏ;Lᴵﹳ/ʿ;)V

    invoke-virtual {v1}, Lᴵﹳ/ᴵʼ;->ˊʻ()Lᴵﹳ/י;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ˈˏ;

    invoke-static {v4, v3}, Lᴵﹳ/ˈˏ;->ʾˋ(Lᴵﹳ/ˈˏ;Lᴵﹳ/י;)V

    invoke-virtual {v1}, Lᴵﹳ/ᴵʼ;->ᴵᵔ()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˈˏ;

    invoke-static {v3, v1}, Lᴵﹳ/ˈˏ;->ʽʽ(Lᴵﹳ/ˈˏ;I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ˈˏ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ﹶᐧ;

    invoke-static {v2, v1}, Lᴵﹳ/ﹶᐧ;->ʾˋ(Lᴵﹳ/ﹶᐧ;Lᴵﹳ/ˈˏ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ﹶᐧ;

    return-object p0
.end method
