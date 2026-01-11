.class public final Lﹳʾ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳʽ/ˈٴ;


# static fields
.field public static final ʽ:Lﹳʾ/ᵎﹶ;

.field public static final ˈ:Lﹳʽ/ᵢˏ;

.field public static final ⁱˊ:Lﹳʾ/ᵎﹶ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lﹳʾ/ᵎﹶ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹳʾ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹳʾ/ᵎﹶ;->ⁱˊ:Lﹳʾ/ᵎﹶ;

    new-instance v0, Lﹳʾ/ᵎﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹳʾ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹳʾ/ᵎﹶ;->ʽ:Lﹳʾ/ᵎﹶ;

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lﹳʽ/ʼˎ;

    const-class v3, Lٴʻ/ᵔᵢ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lﹳʾ/ᵎﹶ;->ˈ:Lﹳʽ/ᵢˏ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹳʾ/ᵎﹶ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ٴʼ;Lﹳʽ/ٴﹶ;Lʻʿ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lﹳʾ/ᵎﹶ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lcom/parse/ٴʼ;->ᵔٴ(I)Lٴʻ/ﾞᴵ;

    move-result-object v2

    iget-object v3, v2, Lٴʻ/ﾞᴵ;->ⁱˊ:Lٴʻ/ʽ;

    sget-object v4, Lٴʻ/ʽ;->ʽ:Lٴʻ/ʽ;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p3, v2}, Lʻʿ/ʽ;->ﹳٴ(Lٴʻ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴʻ/ᵔᵢ;

    iget-object v4, v2, Lٴʻ/ﾞᴵ;->ﹳٴ:Lﹳˋ/ʽʽ;

    instance-of v5, v4, Lﹳʾ/ᵔʾ;

    if-eqz v5, :cond_0

    check-cast v4, Lﹳʾ/ᵔʾ;

    invoke-virtual {v4}, Lﹳʾ/ᵔʾ;->ˊʻ()Lʾᐧ/ﹳٴ;

    move-result-object v4

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lﹳʽ/ʼˎ;

    if-eqz v5, :cond_4

    check-cast v4, Lﹳʽ/ʼˎ;

    iget-object v4, v4, Lﹳʽ/ʼˎ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    :goto_1
    new-instance v5, Lﹳʾ/ʼᐧ;

    iget v2, v2, Lٴʻ/ﾞᴵ;->ʽ:I

    invoke-direct {v5, v3, v2}, Lﹳʾ/ʼᐧ;-><init>(Lٴʻ/ᵔᵢ;I)V

    iget-object v2, v4, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    array-length v3, v2

    if-eqz v3, :cond_2

    array-length v2, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "PrefixMap only supports 0 and 5 byte prefixes"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot get output prefix for key of class "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with parameters "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lﹳˋ/ʽʽ;->ˉˆ()Lٴʻ/ʼˎ;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p2, p2, Lﹳʽ/ٴﹶ;->ﹳٴ:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lﹳʽ/ˉˆ;->ⁱˊ:Lﹳʽ/ˉˆ;

    iget-object p2, p2, Lﹳʽ/ˉˆ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lﹳʽ/ᵔʾ;

    if-nez p2, :cond_7

    sget-object p2, Lﹳʽ/ˉˆ;->ʽ:Lﹳʽ/ᵔʾ;

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ﹳـ()Lٴʻ/ﾞᴵ;

    move-result-object p2

    invoke-virtual {p3, p2}, Lʻʿ/ʽ;->ﹳٴ(Lٴʻ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lٴʻ/ᵔᵢ;

    new-instance p3, Lﹳʾ/ᵔﹳ;

    new-instance v1, Lﹳʾ/ʼᐧ;

    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ﹳـ()Lٴʻ/ﾞᴵ;

    move-result-object p1

    iget p1, p1, Lٴʻ/ﾞᴵ;->ʽ:I

    invoke-direct {v1, p2, p1}, Lﹳʾ/ʼᐧ;-><init>(Lٴʻ/ᵔᵢ;I)V

    new-instance p1, Lﹳʽ/ʼʼ;

    invoke-direct {p1, v0}, Lﹳʽ/ʼʼ;-><init>(Ljava/util/HashMap;)V

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    return-object p3

    :pswitch_0
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ﹳـ()Lٴʻ/ﾞᴵ;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p1, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {p1, v1}, Lcom/parse/ٴʼ;->ᵔٴ(I)Lٴʻ/ﾞᴵ;

    move-result-object v2

    iget-object v3, v2, Lٴʻ/ﾞᴵ;->ⁱˊ:Lٴʻ/ʽ;

    sget-object v4, Lٴʻ/ʽ;->ʽ:Lٴʻ/ʽ;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p3, v2}, Lʻʿ/ʽ;->ﹳٴ(Lٴʻ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹳʾ/ˑﹳ;

    iget-object v2, v2, Lٴʻ/ﾞᴵ;->ﹳٴ:Lﹳˋ/ʽʽ;

    instance-of v4, v2, Lﹳʾ/ᵔʾ;

    if-eqz v4, :cond_9

    check-cast v2, Lﹳʾ/ᵔʾ;

    invoke-virtual {v2}, Lﹳʾ/ᵔʾ;->ˊʻ()Lʾᐧ/ﹳٴ;

    move-result-object v2

    goto :goto_6

    :cond_9
    instance-of v4, v2, Lﹳʽ/ʼˎ;

    if-eqz v4, :cond_d

    check-cast v2, Lﹳʽ/ʼˎ;

    iget-object v2, v2, Lﹳʽ/ʼˎ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    :goto_6
    iget-object v4, v2, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    array-length v5, v4

    if-eqz v5, :cond_b

    array-length v4, v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    goto :goto_7

    :cond_a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "PrefixMap only supports 0 and 5 byte prefixes"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_7
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_8

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    :goto_8
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot get output prefix for key of class "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with parameters "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lﹳˋ/ʽʽ;->ˉˆ()Lٴʻ/ʼˎ;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p3, p2}, Lʻʿ/ʽ;->ﹳٴ(Lٴʻ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳʾ/ˑﹳ;

    new-instance p1, Lﹳʾ/ﾞᴵ;

    new-instance p2, Lﹳʽ/ʼʼ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lﹳʾ/ᵎﹶ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lٴʻ/ᵔᵢ;

    return-object v0

    :pswitch_0
    const-class v0, Lﹳʾ/ˑﹳ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lﹳʾ/ᵎﹶ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lٴʻ/ᵔᵢ;

    return-object v0

    :pswitch_0
    const-class v0, Lﹳʾ/ˑﹳ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
