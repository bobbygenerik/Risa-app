.class public final Landroidx/datastore/preferences/protobuf/ˑٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;


# instance fields
.field public final ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

.field public final ﹳٴ:Landroidx/datastore/preferences/protobuf/ʽʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ˑٴ;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ˑٴ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroidx/datastore/preferences/protobuf/ʽʽ;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ʽʽ;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ʽʽ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;
    .locals 9

    .prologue
    const-string v0, "messageType"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˑٴ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ʼˈ;

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ʽʽ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    const-class v2, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/protobuf/ᴵˊ;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/ᴵˊ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ˊˋ;

    move-result-object v3

    iget v1, v3, Landroidx/datastore/preferences/protobuf/ˊˋ;->ˈ:I

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    const/4 v5, 0x2

    and-int/2addr v1, v5

    const-string v6, "Protobuf runtime is not correctly loaded."

    if-ne v1, v5, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽ:Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʼᐧ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    new-instance v3, Landroidx/datastore/preferences/protobuf/ᵔי;

    invoke-direct {v3, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/ᵔי;-><init>(Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ﹳٴ;)V

    goto/16 :goto_2

    :cond_2
    sget-object v1, Landroidx/datastore/preferences/protobuf/ـˏ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʼᐧ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    if-eqz v2, :cond_3

    new-instance v3, Landroidx/datastore/preferences/protobuf/ᵔי;

    invoke-direct {v3, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/ᵔי;-><init>(Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ﹳٴ;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    move-object v1, v4

    sget-object v4, Landroidx/datastore/preferences/protobuf/ᵔٴ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ˆﾞ;

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʾˋ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    sget-object v6, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽ:Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ()I

    move-result v7

    invoke-static {v7}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v7

    if-eq v7, v2, :cond_5

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʼᐧ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    :cond_5
    move-object v7, v1

    sget-object v8, Landroidx/datastore/preferences/protobuf/ˉٴ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    instance-of v1, v3, Landroidx/datastore/preferences/protobuf/ˊˋ;

    if-eqz v1, :cond_6

    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ـˆ(Landroidx/datastore/preferences/protobuf/ˊˋ;Landroidx/datastore/preferences/protobuf/ˆﾞ;Landroidx/datastore/preferences/protobuf/ᵢˏ;Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ٴᵢ;)Landroidx/datastore/preferences/protobuf/ᵎˊ;

    move-result-object v3

    goto :goto_2

    :cond_6
    sget-object p1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_7
    move-object v1, v4

    sget-object v4, Landroidx/datastore/preferences/protobuf/ᵔٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆﾞ;

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʾˋ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    move-object v7, v6

    sget-object v6, Landroidx/datastore/preferences/protobuf/ـˏ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ʿ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ()I

    move-result v8

    invoke-static {v8}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v8

    if-eq v8, v2, :cond_8

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʼᐧ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    if-eqz v1, :cond_9

    :cond_8
    move-object v7, v1

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    sget-object v8, Landroidx/datastore/preferences/protobuf/ˉٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    instance-of v1, v3, Landroidx/datastore/preferences/protobuf/ˊˋ;

    if-eqz v1, :cond_b

    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ـˆ(Landroidx/datastore/preferences/protobuf/ˊˋ;Landroidx/datastore/preferences/protobuf/ˆﾞ;Landroidx/datastore/preferences/protobuf/ᵢˏ;Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ٴᵢ;)Landroidx/datastore/preferences/protobuf/ᵎˊ;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/ʼˈ;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    return-object v3

    :cond_b
    sget-object p1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_c
    return-object v1
.end method
