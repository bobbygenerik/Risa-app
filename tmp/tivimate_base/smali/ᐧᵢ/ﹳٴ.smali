.class public Lᐧᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ﾞʻ;


# static fields
.field public static final ʽʽ:Lᐧᵢ/ﹳٴ;

.field public static final ˈٴ:Lᐧᵢ/ﹳٴ;

.field public static final ˊʻ:Lᐧᵢ/ﹳٴ;

.field public static final ٴᵢ:Lᐧᵢ/ﹳٴ;

.field public static final ᴵˊ:Lᐧᵢ/ﹳٴ;

.field public static final ᴵᵔ:Lᐧᵢ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lᐧᵢ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ﹳٴ;->ᴵˊ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ﹳٴ;->ʽʽ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ﹳٴ;->ˈٴ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ﹳٴ;->ᴵᵔ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ﹳٴ;->ˊʻ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ﹳٴ;->ٴᵢ:Lᐧᵢ/ﹳٴ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lᐧᵢ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(ILjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parameter #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ˆʾ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lᐧᵢ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lˎᵢ/ᴵᵔ;

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->close()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    check-cast p1, Lˎᵢ/ᴵᵔ;

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->close()V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_1
    check-cast p1, Lˎᵢ/ᴵᵔ;

    return-object p1

    :pswitch_2
    check-cast p1, Lˎᵢ/ʾˋ;

    return-object p1

    :pswitch_3
    check-cast p1, Lˎᵢ/ᴵᵔ;

    :try_start_0
    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v1

    invoke-interface {v1, v0}, Lˊᐧ/ᵔᵢ;->ᵢˏ(Lˊᐧ/ﾞᴵ;)J

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->ᵎﹶ()Lˎᵢ/ﹳᐧ;

    move-result-object v1

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v2

    new-instance v4, Lˎᵢ/ˈٴ;

    invoke-direct {v4, v1, v2, v3, v0}, Lˎᵢ/ˈٴ;-><init>(Lˎᵢ/ﹳᐧ;JLˊᐧ/ﾞᴵ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->close()V

    throw v0

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˈ(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public ˑﹳ(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ⁱˊ()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public ﹳٴ(Ljava/util/concurrent/Executor;)Ljava/util/List;
    .locals 1

    new-instance v0, Lᐧᵢ/ˉˆ;

    invoke-direct {v0, p1}, Lᐧᵢ/ˉˆ;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
