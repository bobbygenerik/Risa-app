.class public final Lٴˏ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉʼ/ˈ;


# direct methods
.method public static ﹳٴ(Ljava/lang/String;Lٴˏ/ˑﹳ;Lˑי/ʽ;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    sget-object v0, Lٴˏ/ﹳٴ;->ﹳٴ:Ljavax/el/ExpressionFactory;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p0, v1}, Ljavax/el/ExpressionFactory;->createValueExpression(Ljavax/el/ELContext;Ljava/lang/String;Ljava/lang/Class;)Ljavax/el/ValueExpression;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/el/ValueExpression;->getValue(Ljavax/el/ELContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Lˏˆ/ﹳٴ;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lˏˆ/ﹳٴ;-><init>(IZ)V

    iput-object p0, p1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    const-string p0, "Error while evaluating EL expression on message"

    iput-object p0, p1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget-object p0, p2, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p0, Lˉʼ/ᵎﹶ;

    iget-object p0, p0, Lˉʼ/ᵎﹶ;->ﹳٴ:Ljava/lang/reflect/Method;

    iput-object p0, p1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object p3, p1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iget-object p0, p2, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lˋʾ/ﹳٴ;

    invoke-virtual {p2, p1}, Lˋʾ/ﹳٴ;->ﹳٴ(Lˏˆ/ﹳٴ;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
