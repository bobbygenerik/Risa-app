.class public final Lᴵˋ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lᴵˋ/ʾᵎ;

.field public static final ˈ:Lᴵˋ/ʾᵎ;

.field public static final ⁱˊ:Lᴵˋ/ˆʾ;

.field public static final ﹳٴ:Lᴵˋ/ˆʾ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵˋ/ˆʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˋ/ˆʾ;->ﹳٴ:Lᴵˋ/ˆʾ;

    new-instance v0, Lᴵˋ/ˆʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˋ/ˆʾ;->ⁱˊ:Lᴵˋ/ˆʾ;

    new-instance v0, Lᴵˋ/ʾᵎ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᴵˋ/ʾᵎ;-><init>(I)V

    sput-object v0, Lᴵˋ/ˆʾ;->ʽ:Lᴵˋ/ʾᵎ;

    new-instance v0, Lᴵˋ/ʾᵎ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᴵˋ/ʾᵎ;-><init>(I)V

    sput-object v0, Lᴵˋ/ˆʾ;->ˈ:Lᴵˋ/ʾᵎ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ﹳٴ(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lᴵˋ/יـ;
    .locals 6

    .prologue
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lᴵˋ/יـ;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroidx/work/WorkerParameters;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p3, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵˋ/יـ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p3, p1, Lᴵˋ/יـ;->ˈ:Z

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "WorkerFactory ("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") returned an instance of a ListenableWorker ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p3

    sget-object v0, Lᴵˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "Could not instantiate "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2, p1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p3

    sget-object v0, Lᴵˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "Invalid class: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2, p1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
