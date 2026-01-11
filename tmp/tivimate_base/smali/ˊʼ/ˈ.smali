.class public abstract Lˊʼ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˆ/ﹳٴ;
.implements Ljava/io/Serializable;


# instance fields
.field public final ʽʽ:Ljava/lang/Class;

.field public transient ʾˋ:Lᐧˆ/ﹳٴ;

.field public final ˈٴ:Ljava/lang/String;

.field public final ˊʻ:Z

.field public final ᴵˊ:Ljava/lang/Object;

.field public final ᴵᵔ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˊʼ/ˈ;->ʽʽ:Ljava/lang/Class;

    iput-object p3, p0, Lˊʼ/ˈ;->ˈٴ:Ljava/lang/String;

    iput-object p4, p0, Lˊʼ/ˈ;->ᴵᵔ:Ljava/lang/String;

    iput-boolean p5, p0, Lˊʼ/ˈ;->ˊʻ:Z

    return-void
.end method


# virtual methods
.method public final ˈ()Lˊʼ/ˑﹳ;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˊʼ/ˈ;->ˊʻ:Z

    iget-object v1, p0, Lˊʼ/ˈ;->ʽʽ:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lˊʼ/ˉʿ;

    invoke-direct {v0, v1}, Lˊʼ/ˉʿ;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    invoke-static {v1}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v0

    return-object v0
.end method

.method public abstract ﹳٴ()Lᐧˆ/ﹳٴ;
.end method
