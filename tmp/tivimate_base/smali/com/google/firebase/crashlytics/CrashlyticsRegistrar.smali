.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field public static final synthetic ˈ:I


# instance fields
.field public final ʽ:Lˏ/ˉˆ;

.field public final ⁱˊ:Lˏ/ˉˆ;

.field public final ﹳٴ:Lˏ/ˉˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    sget-object v0, Lˉᴵ/ʽ;->ⁱˊ:Ljava/util/Map;

    sget-object v1, Lˉᴵ/ˈ;->ʾˋ:Lˉᴵ/ˈ;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "FirebaseSessions"

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dependency "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    return-void

    :cond_0
    new-instance v2, Lˉᴵ/ﹳٴ;

    new-instance v4, Lﹶי/ʽ;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lﹶי/ʽ;-><init>(Z)V

    invoke-direct {v2, v4}, Lˉᴵ/ﹳٴ;-><init>(Lﹶי/ʽ;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dependency to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ﹳٴ;

    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ﹳٴ:Lˏ/ˉˆ;

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ⁱˊ:Lˏ/ˉˆ;

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ʽ;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ʽ:Lˏ/ˉˆ;

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 7

    const-class v0, Lᵎˉ/ⁱˊ;

    invoke-static {v0}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v0

    const-string v1, "fire-cls"

    iput-object v1, v0, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    const-class v2, Lˉᵎ/ᵎﹶ;

    invoke-static {v2}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    const-class v2, Lʽʼ/ˑﹳ;

    invoke-static {v2}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ﹳٴ:Lˏ/ˉˆ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ⁱˊ:Lˏ/ˉˆ;

    invoke-direct {v2, v3, v4, v5}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->ʽ:Lˏ/ˉˆ;

    invoke-direct {v2, v3, v4, v5}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    const/4 v3, 0x2

    const-class v6, Lיˎ/ⁱˊ;

    invoke-direct {v2, v5, v3, v6}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    const-class v6, Lˆٴ/ﹳٴ;

    invoke-direct {v2, v5, v3, v6}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    const-class v6, Lˏﹶ/ﹳٴ;

    invoke-direct {v2, v5, v3, v6}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lٴˉ/ﹳٴ;

    const/4 v6, 0x7

    invoke-direct {v2, v6, p0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ʽ()V

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    const-string v2, "20.0.0"

    invoke-static {v1, v2}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    new-array v2, v3, [Lˏ/ⁱˊ;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
