.class public final Lˏᵢ/ﾞᴵ;
.super Landroidx/datastore/preferences/protobuf/ʻٴ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/\u02c8\u02bf;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/ـˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/\u0640\u02c6;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˏᵢ/ﾞᴵ;

    invoke-direct {v0}, Lˏᵢ/ﾞᴵ;-><init>()V

    sput-object v0, Lˏᵢ/ﾞᴵ;->DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

    const-class v1, Lˏᵢ/ﾞᴵ;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ˆʾ(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ʻٴ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ʻٴ;-><init>()V

    sget-object v0, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iput-object v0, p0, Lˏᵢ/ﾞᴵ;->strings_:Landroidx/datastore/preferences/protobuf/ـˆ;

    return-void
.end method

.method public static ˉʿ()Lˏᵢ/ﾞᴵ;
    .locals 1

    sget-object v0, Lˏᵢ/ﾞᴵ;->DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

    return-object v0
.end method

.method public static ˉˆ()Lˏᵢ/ˑﹳ;
    .locals 2

    sget-object v0, Lˏᵢ/ﾞᴵ;->DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lˏᵢ/ﾞᴵ;->ʽ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ˏי;

    check-cast v0, Lˏᵢ/ˑﹳ;

    return-object v0
.end method

.method public static ﾞʻ(Lˏᵢ/ﾞᴵ;Ljava/util/Set;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˏᵢ/ﾞᴵ;->strings_:Landroidx/datastore/preferences/protobuf/ـˆ;

    move-object v1, v0

    check-cast v1, Landroidx/datastore/preferences/protobuf/ⁱˊ;

    iget-boolean v1, v1, Landroidx/datastore/preferences/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v1, :cond_1

    check-cast v0, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iget v1, v0, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ˈ(I)Landroidx/datastore/preferences/protobuf/ˋᵔ;

    move-result-object v0

    iput-object v0, p0, Lˏᵢ/ﾞᴵ;->strings_:Landroidx/datastore/preferences/protobuf/ـˆ;

    :cond_1
    iget-object p0, p0, Lˏᵢ/ﾞᴵ;->strings_:Landroidx/datastore/preferences/protobuf/ـˆ;

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ﹳٴ:Ljava/nio/charset/Charset;

    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iget v1, v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_2
    check-cast p0, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Element at index "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-lt v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public final ʽ(I)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lˏᵢ/ﾞᴵ;->PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ;

    if-nez p1, :cond_1

    const-class v0, Lˏᵢ/ﾞᴵ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lˏᵢ/ﾞᴵ;->PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/datastore/preferences/protobuf/ʽﹳ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lˏᵢ/ﾞᴵ;->PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    :pswitch_1
    sget-object p1, Lˏᵢ/ﾞᴵ;->DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

    return-object p1

    :pswitch_2
    new-instance p1, Lˏᵢ/ˑﹳ;

    sget-object v0, Lˏᵢ/ﾞᴵ;->DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

    invoke-direct {p1, v0}, Landroidx/datastore/preferences/protobuf/ˏי;-><init>(Landroidx/datastore/preferences/protobuf/ʻٴ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lˏᵢ/ﾞᴵ;

    invoke-direct {p1}, Lˏᵢ/ﾞᴵ;-><init>()V

    return-object p1

    :pswitch_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "strings_"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    sget-object v1, Lˏᵢ/ﾞᴵ;->DEFAULT_INSTANCE:Lˏᵢ/ﾞᴵ;

    new-instance v2, Landroidx/datastore/preferences/protobuf/ˊˋ;

    invoke-direct {v2, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/ˊˋ;-><init>(Landroidx/datastore/preferences/protobuf/ʻٴ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔʾ()Landroidx/datastore/preferences/protobuf/ـˆ;
    .locals 1

    iget-object v0, p0, Lˏᵢ/ﾞᴵ;->strings_:Landroidx/datastore/preferences/protobuf/ـˆ;

    return-object v0
.end method
