.class public Lᴵˈ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lᴵˈ/ˏי;


# instance fields
.field public final ʽ:Ljava/lang/Throwable;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lᴵˈ/ˏי;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lᴵˈ/ˏי;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    sput-object v0, Lᴵˈ/ˏי;->ˈ:Lᴵˈ/ˏי;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lᴵˈ/ˏי;->ﹳٴ:Z

    iput-object p2, p0, Lᴵˈ/ˏי;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lᴵˈ/ˏי;->ʽ:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public ﹳٴ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᴵˈ/ˏי;->ⁱˊ:Ljava/lang/String;

    return-object v0
.end method
