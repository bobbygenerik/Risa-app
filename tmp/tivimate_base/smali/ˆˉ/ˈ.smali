.class public final Lˆˉ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊʿ/ﹳٴ;


# static fields
.field public static final ˑﹳ:Lˆˉ/ﹳٴ;

.field public static final ᵎﹶ:Lˆˉ/ⁱˊ;

.field public static final ᵔᵢ:Lˆˉ/ʽ;

.field public static final ﾞᴵ:Lˆˉ/ⁱˊ;


# instance fields
.field public final ʽ:Lˆˉ/ﹳٴ;

.field public ˈ:Z

.field public final ⁱˊ:Ljava/util/HashMap;

.field public final ﹳٴ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˆˉ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˆˉ/ﹳٴ;-><init>(I)V

    sput-object v0, Lˆˉ/ˈ;->ˑﹳ:Lˆˉ/ﹳٴ;

    new-instance v0, Lˆˉ/ⁱˊ;

    invoke-direct {v0, v1}, Lˆˉ/ⁱˊ;-><init>(I)V

    sput-object v0, Lˆˉ/ˈ;->ﾞᴵ:Lˆˉ/ⁱˊ;

    new-instance v0, Lˆˉ/ⁱˊ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˆˉ/ⁱˊ;-><init>(I)V

    sput-object v0, Lˆˉ/ˈ;->ᵎﹶ:Lˆˉ/ⁱˊ;

    new-instance v0, Lˆˉ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˆˉ/ˈ;->ᵔᵢ:Lˆˉ/ʽ;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˆˉ/ˈ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lˆˉ/ˈ;->ⁱˊ:Ljava/util/HashMap;

    sget-object v2, Lˆˉ/ˈ;->ˑﹳ:Lˆˉ/ﹳٴ;

    iput-object v2, p0, Lˆˉ/ˈ;->ʽ:Lˆˉ/ﹳٴ;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lˆˉ/ˈ;->ˈ:Z

    sget-object v2, Lˆˉ/ˈ;->ﾞᴵ:Lˆˉ/ⁱˊ;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lˆˉ/ˈ;->ᵎﹶ:Lˆˉ/ⁱˊ;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lˆˉ/ˈ;->ᵔᵢ:Lˆˉ/ʽ;

    const-class v3, Ljava/util/Date;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lˆˉ/ˈ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lˆˉ/ˈ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
