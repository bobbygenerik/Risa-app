.class public final Lﹳʽ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/util/HashMap;

.field public final ﹳٴ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lˑʼ/ᵎˊ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lﹳʽ/ʽʽ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lﹳʽ/ʽʽ;->ⁱˊ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lﹳˋ/ʽʽ;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .prologue
    new-instance v0, Lﹳʽ/ᴵˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lﹳʽ/ᴵˊ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p2, p0, Lﹳʽ/ʽʽ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lﹳʽ/ᵢˏ;

    iget-object p2, p2, Lﹳʽ/ᵢˏ;->ʽ:Lﹳʽ/ʾˋ;

    invoke-interface {p2, p1}, Lﹳʽ/ʾˋ;->ᵔᵢ(Lﹳˋ/ʽʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No PrimitiveConstructor for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " available, see https://developers.google.com/tink/faq/registration_errors"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
